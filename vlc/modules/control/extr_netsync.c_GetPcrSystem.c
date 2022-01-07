
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tick_t ;
typedef int input_thread_t ;


 scalar_t__ input_GetPcrSystem (int *,int*,int *) ;
 int vlc_restorecancel (int) ;
 int vlc_savecancel () ;

__attribute__((used)) static vlc_tick_t GetPcrSystem(input_thread_t *input)
{
    int canc = vlc_savecancel();

    vlc_tick_t system;
    if (input_GetPcrSystem(input, &system, ((void*)0)))
        system = -1;
    vlc_restorecancel(canc);

    return system;
}
