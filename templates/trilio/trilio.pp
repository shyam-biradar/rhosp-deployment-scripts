class triliovault {
        file { '/home/heat-admin/triliovault':
        ensure => 'present',
        replace => 'no',
        content => "File created by custom puppet manifest\n",
        mode => '0644',
        }

}
