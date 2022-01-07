
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sem_t ;


 int abort () ;
 int sem_init (int *,int ,unsigned int) ;
 scalar_t__ unlikely (int ) ;

void vlc_sem_init (vlc_sem_t *sem, unsigned value)
{
    if (unlikely(sem_init (sem, 0, value)))
        abort ();
}
