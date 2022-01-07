
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
struct TYPE_3__ {int Valid; int Event; } ;
typedef TYPE_1__ sys_sem_t ;
typedef int err_t ;


 int ASSERT (int) ;
 int ERR_OK ;
 int KeInitializeEvent (int *,int ,int) ;
 int SynchronizationEvent ;

err_t
sys_sem_new(sys_sem_t *sem, u8_t count)
{
    ASSERT(count == 0 || count == 1);





    KeInitializeEvent(&sem->Event, SynchronizationEvent, count);

    sem->Valid = 1;

    return ERR_OK;
}
