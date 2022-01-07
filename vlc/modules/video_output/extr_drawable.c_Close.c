
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sys; } ;
typedef TYPE_1__ vout_window_t ;


 int assert (uintptr_t) ;
 int free (uintptr_t*) ;
 int serializer ;
 uintptr_t* used ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

__attribute__((used)) static void Close (vout_window_t *wnd)
{
    uintptr_t val = (uintptr_t)wnd->sys;
    size_t n = 0;


    vlc_mutex_lock (&serializer);
    assert (used != ((void*)0));
    while (used[n] != val)
    {
        assert (used[n]);
        n++;
    }
    do
        used[n] = used[n + 1];
    while (used[++n] != 0);

    if (n == 0)
    {
         free (used);
         used = ((void*)0);
    }
    vlc_mutex_unlock (&serializer);
}
