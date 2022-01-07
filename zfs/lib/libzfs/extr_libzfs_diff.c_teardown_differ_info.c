
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cleanupfd; int tomnt; int tmpsnap; int tosnap; int frommnt; int fromsnap; int dsmnt; int ds; } ;
typedef TYPE_1__ differ_info_t ;


 int close (int ) ;
 int free (int ) ;

__attribute__((used)) static void
teardown_differ_info(differ_info_t *di)
{
 free(di->ds);
 free(di->dsmnt);
 free(di->fromsnap);
 free(di->frommnt);
 free(di->tosnap);
 free(di->tmpsnap);
 free(di->tomnt);
 (void) close(di->cleanupfd);
}
