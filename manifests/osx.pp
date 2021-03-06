#puppet-atom-ide Module.
#Sets up atom.io with Puppet specific packages, languages, linter, sync-on-save, git-plus, and the puppet module generate.
class puppet_atom_env::osx {

include brew

#Install Atom on Windows.
  package { 'atom':
    ensure   => present,
    provider => 'brew',
  }

#Install packages with APM
package {['linter','atom-lint','linter-puppet-lint','language-puppet','sync-on-save','language-docker','advanced-open-file','file-icons','terminal-plus', 'aligner','aligner-puppet','auto-detect-indentationb','file-type-icons','git-plus','highlight-selected','minimap','minimap-cursorline','minimap-highlight-selected','minimap-linter','minimap-pigments','minimap-selection','open-recent','project-manager', 'puppet-module-generator' ]:
  provider => apm,
  ensure   => present,
  require  => Package['atom'],
 }

}
