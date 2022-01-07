
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Event; } ;
typedef TYPE_1__ sys_sem_t ;


 int FALSE ;
 int IO_NO_INCREMENT ;
 int KeSetEvent (int *,int ,int ) ;

void
sys_sem_signal(sys_sem_t* sem)
{
    KeSetEvent(&sem->Event, IO_NO_INCREMENT, FALSE);
}
