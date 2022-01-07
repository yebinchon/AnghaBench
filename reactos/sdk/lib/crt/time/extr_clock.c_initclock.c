
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILETIME ;


 int GetSystemTimeAsFileTime (int *) ;
 int g_StartupTime ;

void
initclock(void)
{
    GetSystemTimeAsFileTime((FILETIME*)&g_StartupTime);
}
