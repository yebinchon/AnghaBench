
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ddt_lock; } ;
typedef TYPE_1__ ddt_t ;


 int mutex_exit (int *) ;

void
ddt_exit(ddt_t *ddt)
{
 mutex_exit(&ddt->ddt_lock);
}
