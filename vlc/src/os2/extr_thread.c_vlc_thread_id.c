
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long _gettid () ;

unsigned long vlc_thread_id (void)
{
    return _gettid();
}
