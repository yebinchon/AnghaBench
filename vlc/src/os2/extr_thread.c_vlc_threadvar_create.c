
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct vlc_threadvar* vlc_threadvar_t ;
struct vlc_threadvar {void (* destroy ) (void*) ;struct vlc_threadvar* next; struct vlc_threadvar* prev; int id; } ;
typedef scalar_t__ ULONG ;


 scalar_t__ DosAllocThreadLocalMemory (int,int *) ;
 int EAGAIN ;
 int errno ;
 int free (struct vlc_threadvar*) ;
 struct vlc_threadvar* malloc (int) ;
 int super_mutex ;
 scalar_t__ unlikely (int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 struct vlc_threadvar* vlc_threadvar_last ;

int vlc_threadvar_create (vlc_threadvar_t *p_tls, void (*destr) (void *))
{
    ULONG rc;

    struct vlc_threadvar *var = malloc (sizeof (*var));
    if (unlikely(var == ((void*)0)))
        return errno;

    rc = DosAllocThreadLocalMemory( 1, &var->id );
    if( rc )
    {
        free (var);
        return EAGAIN;
    }

    var->destroy = destr;
    var->next = ((void*)0);
    *p_tls = var;

    vlc_mutex_lock (&super_mutex);
    var->prev = vlc_threadvar_last;
    if (var->prev)
        var->prev->next = var;

    vlc_threadvar_last = var;
    vlc_mutex_unlock (&super_mutex);
    return 0;
}
