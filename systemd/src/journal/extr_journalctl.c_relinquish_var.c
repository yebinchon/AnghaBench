
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int simple_varlink_call (char*,char*) ;

__attribute__((used)) static int relinquish_var(void) {
        return simple_varlink_call("--relinquish-var/--smart-relinquish-var", "io.systemd.Journal.RelinquishVar");
}
