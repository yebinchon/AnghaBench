
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int seccomp; int sysctl; int network_namespace_path; int n_extra_nodes; int extra_nodes; int supplementary_gids; int properties; int slice; int n_oci_hooks_poststop; int oci_hooks_poststop; int n_oci_hooks_poststart; int oci_hooks_poststart; int n_oci_hooks_prestart; int oci_hooks_prestart; int root; int bundle; int n_custom_mounts; int custom_mounts; int expose_ports; int network_zone; int network_bridge; int network_veth_extra; int network_ipvlan; int network_macvlan; int network_interfaces; int cpu_set; int hostname; int rlimit; int syscall_blacklist; int syscall_whitelist; int working_directory; int pivot_root_old; int pivot_root_new; int user; int environment; int parameters; } ;
typedef TYPE_1__ Settings ;


 int cpu_set_reset (int *) ;
 int custom_mount_free_all (int ,int ) ;
 int device_node_array_free (int ,int ) ;
 int expose_port_free_all (int ) ;
 int free (int ) ;
 int free_oci_hooks (int ,int ) ;
 TYPE_1__* mfree (TYPE_1__*) ;
 int rlimit_free_all (int ) ;
 int sd_bus_message_unref (int ) ;
 int seccomp_release (int ) ;
 int strv_free (int ) ;

Settings* settings_free(Settings *s) {
        if (!s)
                return ((void*)0);

        strv_free(s->parameters);
        strv_free(s->environment);
        free(s->user);
        free(s->pivot_root_new);
        free(s->pivot_root_old);
        free(s->working_directory);
        strv_free(s->syscall_whitelist);
        strv_free(s->syscall_blacklist);
        rlimit_free_all(s->rlimit);
        free(s->hostname);
        cpu_set_reset(&s->cpu_set);

        strv_free(s->network_interfaces);
        strv_free(s->network_macvlan);
        strv_free(s->network_ipvlan);
        strv_free(s->network_veth_extra);
        free(s->network_bridge);
        free(s->network_zone);
        expose_port_free_all(s->expose_ports);

        custom_mount_free_all(s->custom_mounts, s->n_custom_mounts);

        free(s->bundle);
        free(s->root);

        free_oci_hooks(s->oci_hooks_prestart, s->n_oci_hooks_prestart);
        free_oci_hooks(s->oci_hooks_poststart, s->n_oci_hooks_poststart);
        free_oci_hooks(s->oci_hooks_poststop, s->n_oci_hooks_poststop);

        free(s->slice);
        sd_bus_message_unref(s->properties);

        free(s->supplementary_gids);
        device_node_array_free(s->extra_nodes, s->n_extra_nodes);
        free(s->network_namespace_path);

        strv_free(s->sysctl);





        return mfree(s);
}
