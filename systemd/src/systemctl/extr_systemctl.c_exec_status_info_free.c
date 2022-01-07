
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int argv; struct TYPE_5__* path; struct TYPE_5__* name; } ;
typedef TYPE_1__ ExecStatusInfo ;


 int assert (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int strv_free (int ) ;

__attribute__((used)) static void exec_status_info_free(ExecStatusInfo *i) {
        assert(i);

        free(i->name);
        free(i->path);
        strv_free(i->argv);
        free(i);
}
