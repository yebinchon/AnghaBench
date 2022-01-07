
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Valid; } ;
typedef TYPE_1__ sys_sem_t ;



void sys_sem_set_invalid(sys_sem_t *sem)
{
    sem->Valid = 0;
}
