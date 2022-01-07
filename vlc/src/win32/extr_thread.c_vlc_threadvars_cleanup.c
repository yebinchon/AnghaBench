
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vlc_threadvar_t ;
struct TYPE_5__ {int (* destroy ) (void*) ;struct TYPE_5__* prev; } ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int stub1 (void*) ;
 int super_mutex ;
 void* vlc_threadvar_get (TYPE_1__*) ;
 TYPE_1__* vlc_threadvar_last ;
 int vlc_threadvar_set (TYPE_1__*,int *) ;

__attribute__((used)) static void vlc_threadvars_cleanup(void)
{
    vlc_threadvar_t key;
retry:

    EnterCriticalSection(&super_mutex);
    for (key = vlc_threadvar_last; key != ((void*)0); key = key->prev)
    {
        void *value = vlc_threadvar_get(key);
        if (value != ((void*)0) && key->destroy != ((void*)0))
        {
            LeaveCriticalSection(&super_mutex);
            vlc_threadvar_set(key, ((void*)0));
            key->destroy(value);
            goto retry;
        }
    }
    LeaveCriticalSection(&super_mutex);
}
