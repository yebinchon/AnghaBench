
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * global ;
 int logger_kill (int *) ;

void logger_kill_global(void)
{
    logger_kill(global);
    global = ((void*)0);
}
