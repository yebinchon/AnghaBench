
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; } ;
typedef TYPE_1__ curlstate ;


 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
unlock(curlstate *state)
{
 pthread_mutex_unlock(&state->mutex);
}
