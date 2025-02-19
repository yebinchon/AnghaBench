
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int send_sighup; int send_sigkill; int final_kill_signal; int kill_signal; int kill_mode; } ;
typedef TYPE_1__ KillContext ;
typedef int FILE ;


 int assert (TYPE_1__*) ;
 int fprintf (int *,char*,char const*,char*,char const*,char*,char const*,char*,char const*,char*,char const*,char*,char const*,char*) ;
 char* kill_mode_to_string (int ) ;
 int restart_kill_signal (TYPE_1__*) ;
 char* signal_to_string (int ) ;
 char* strempty (char const*) ;
 char* yes_no (int ) ;

void kill_context_dump(KillContext *c, FILE *f, const char *prefix) {
        assert(c);

        prefix = strempty(prefix);

        fprintf(f,
                "%sKillMode: %s\n"
                "%sKillSignal: SIG%s\n"
                "%sRestartKillSignal: SIG%s\n"
                "%sFinalKillSignal: SIG%s\n"
                "%sSendSIGKILL: %s\n"
                "%sSendSIGHUP: %s\n",
                prefix, kill_mode_to_string(c->kill_mode),
                prefix, signal_to_string(c->kill_signal),
                prefix, signal_to_string(restart_kill_signal(c)),
                prefix, signal_to_string(c->final_kill_signal),
                prefix, yes_no(c->send_sigkill),
                prefix, yes_no(c->send_sighup));
}
