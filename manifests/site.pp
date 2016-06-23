#site.pp

node 'node1' , 'abi-pc' {
#       include role::webserver 
package {'ntp':
        ensure => 'present',
        }
}

node win01.bigpond {
	#file { ['c:/parentdir', 'c:/parentdir/childdir'] :
  #ensure         => 'directory'
 #}
 		 package {"Notepad++":
                ensure => absent,
                source => 'c:\packages\npp.6.9.2.Installer.exe',
                uninstall_options => ['/S', '/SUPPRESSMSGBOXES', '/LOG']
                }
}
node puppet {
	package {'scp':
	ensure => present,
	}
}

