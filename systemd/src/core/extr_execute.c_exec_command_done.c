
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int argv; int path; } ;
typedef TYPE_1__ ExecCommand ;


 int assert (TYPE_1__*) ;
 int mfree (int ) ;
 int strv_free (int ) ;

__attribute__((used)) static void exec_command_done(ExecCommand *c) {
        assert(c);

        c->path = mfree(c->path);
        c->argv = strv_free(c->argv);
}
