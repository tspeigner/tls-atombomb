#atombomb
#Install Atom on Windows.

class atombomb {
  
  package { 'atom':
    ensure   => latest,
    provider => 'chocolatey',
  }
  
  Package{
    provider => apm,
    ensure   => latest,
  }

   package {['linter','atom-lint','puppet-lint','git-plus','language-puppet','sync-on-save','language-docker','advanced-open-file','file-icons','terminal-plus', 'aligner','aligner-puppet','atom-beautify','auto-detect-indentationb','file-icons','file-type-icons','git-plus','highlight-selected','language-puppet','linter-puppet-lint','minimap','minimap-cursorline','minimap-highlight-selected','minimap-linter','minimap-pigments','minimap-selection','open-recent',  ]:}
  
  
 # package { 'atom-lint':
 #   ensure   => latest,
 #   provider => apm,
 #} 
 # 
 # package { 'puppet-lint':
 #   ensure   => latest,
 #   provider => apm,
 # }
 # 
 # package { 'git-plus':
 #   ensure   => latest,
 #   provider => apm,
 # }
 # 
 # package { 'language-puppet':
 #   ensure   => latest,
 #   provider => apm,
 # }
}
