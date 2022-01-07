
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int condvar; struct TYPE_4__* next; } ;
typedef TYPE_1__ vlc_static_cond_t ;


 int free (TYPE_1__*) ;
 TYPE_1__* static_condvar_start ;
 int vlc_cond_destroy (int *) ;

__attribute__((used)) static void vlc_static_cond_destroy_all (void)
{
    vlc_static_cond_t *static_condvar;
    vlc_static_cond_t *static_condvar_next;


    for (static_condvar = static_condvar_start; static_condvar;
         static_condvar = static_condvar_next)
    {
        static_condvar_next = static_condvar->next;

        vlc_cond_destroy (&static_condvar->condvar);
        free (static_condvar);
    }
}
