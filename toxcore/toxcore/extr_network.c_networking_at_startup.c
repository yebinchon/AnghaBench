
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int WSADATA ;


 int MAKEWORD (int,int) ;
 scalar_t__ NO_ERROR ;
 scalar_t__ WSAStartup (int ,int *) ;
 int at_startup_ran ;
 scalar_t__ current_time_actual () ;
 int randombytes_stir () ;
 int sodium_init () ;
 int srand (int ) ;

int networking_at_startup(void)
{
    if (at_startup_ran != 0)
        return 0;






    sodium_init();
    srand((uint32_t)current_time_actual());
    at_startup_ran = 1;
    return 0;
}
