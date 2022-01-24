#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  seccomp; int /*<<< orphan*/  sysctl; int /*<<< orphan*/  network_namespace_path; int /*<<< orphan*/  n_extra_nodes; int /*<<< orphan*/  extra_nodes; int /*<<< orphan*/  supplementary_gids; int /*<<< orphan*/  properties; int /*<<< orphan*/  slice; int /*<<< orphan*/  n_oci_hooks_poststop; int /*<<< orphan*/  oci_hooks_poststop; int /*<<< orphan*/  n_oci_hooks_poststart; int /*<<< orphan*/  oci_hooks_poststart; int /*<<< orphan*/  n_oci_hooks_prestart; int /*<<< orphan*/  oci_hooks_prestart; int /*<<< orphan*/  root; int /*<<< orphan*/  bundle; int /*<<< orphan*/  n_custom_mounts; int /*<<< orphan*/  custom_mounts; int /*<<< orphan*/  expose_ports; int /*<<< orphan*/  network_zone; int /*<<< orphan*/  network_bridge; int /*<<< orphan*/  network_veth_extra; int /*<<< orphan*/  network_ipvlan; int /*<<< orphan*/  network_macvlan; int /*<<< orphan*/  network_interfaces; int /*<<< orphan*/  cpu_set; int /*<<< orphan*/  hostname; int /*<<< orphan*/  rlimit; int /*<<< orphan*/  syscall_blacklist; int /*<<< orphan*/  syscall_whitelist; int /*<<< orphan*/  working_directory; int /*<<< orphan*/  pivot_root_old; int /*<<< orphan*/  pivot_root_new; int /*<<< orphan*/  user; int /*<<< orphan*/  environment; int /*<<< orphan*/  parameters; } ;
typedef  TYPE_1__ Settings ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

Settings* FUNC11(Settings *s) {
        if (!s)
                return NULL;

        FUNC10(s->parameters);
        FUNC10(s->environment);
        FUNC4(s->user);
        FUNC4(s->pivot_root_new);
        FUNC4(s->pivot_root_old);
        FUNC4(s->working_directory);
        FUNC10(s->syscall_whitelist);
        FUNC10(s->syscall_blacklist);
        FUNC7(s->rlimit);
        FUNC4(s->hostname);
        FUNC0(&s->cpu_set);

        FUNC10(s->network_interfaces);
        FUNC10(s->network_macvlan);
        FUNC10(s->network_ipvlan);
        FUNC10(s->network_veth_extra);
        FUNC4(s->network_bridge);
        FUNC4(s->network_zone);
        FUNC3(s->expose_ports);

        FUNC1(s->custom_mounts, s->n_custom_mounts);

        FUNC4(s->bundle);
        FUNC4(s->root);

        FUNC5(s->oci_hooks_prestart, s->n_oci_hooks_prestart);
        FUNC5(s->oci_hooks_poststart, s->n_oci_hooks_poststart);
        FUNC5(s->oci_hooks_poststop, s->n_oci_hooks_poststop);

        FUNC4(s->slice);
        FUNC8(s->properties);

        FUNC4(s->supplementary_gids);
        FUNC2(s->extra_nodes, s->n_extra_nodes);
        FUNC4(s->network_namespace_path);

        FUNC10(s->sysctl);

#if HAVE_SECCOMP
        seccomp_release(s->seccomp);
#endif

        return FUNC6(s);
}