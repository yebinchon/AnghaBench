
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vlc_killed () ;

__attribute__((used)) static int UrlInterruptCallback(void *access)
{




    (void) access;
    return vlc_killed();
}
