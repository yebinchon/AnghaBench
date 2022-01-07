
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sys_sem_t ;


 int sys_sem_set_invalid (int *) ;

void
sys_sem_free(sys_sem_t* sem)
{


    sys_sem_set_invalid(sem);
}
