
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Valid; } ;
typedef TYPE_1__ sys_sem_t ;



int sys_sem_valid(sys_sem_t *sem)
{
    return sem->Valid;
}
