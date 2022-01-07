
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_thread_t ;


 int thread_key ;
 int vlc_threadvar_get (int ) ;

vlc_thread_t vlc_thread_self (void)
{
    return vlc_threadvar_get (thread_key);
}
