
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int wanted_by; int wants; int after; int before; struct TYPE_4__* pid_file; struct TYPE_4__* description; struct TYPE_4__* path; struct TYPE_4__* name; } ;
typedef TYPE_1__ SysvStub ;


 int free (TYPE_1__*) ;
 int strv_free (int ) ;

__attribute__((used)) static void free_sysvstub(SysvStub *s) {
        if (!s)
                return;

        free(s->name);
        free(s->path);
        free(s->description);
        free(s->pid_file);
        strv_free(s->before);
        strv_free(s->after);
        strv_free(s->wants);
        strv_free(s->wanted_by);
        free(s);
}
