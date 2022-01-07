
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Unit ;


 int EPERM ;
 int LOG_DEBUG ;
 int LOG_WARNING ;
 int bpf_firewall_unsupported_reason ;
 scalar_t__ detect_container () ;
 scalar_t__ getuid () ;
 int log_unit_full (int *,int ,int ,char*,char*) ;

void emit_bpf_firewall_warning(Unit *u) {
        static bool warned = 0;

        if (!warned) {
                bool quiet = bpf_firewall_unsupported_reason == -EPERM && detect_container();

                log_unit_full(u, quiet ? LOG_DEBUG : LOG_WARNING, bpf_firewall_unsupported_reason,
                              "unit configures an IP firewall, but %s.\n"
                              "(This warning is only shown for the first unit using IP firewalling.)",
                              getuid() != 0 ? "not running as root" :
                                              "the local system does not support BPF/cgroup firewalling");
                warned = 1;
        }
}
