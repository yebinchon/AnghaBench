
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prog_state ;


 int fetcher_thread (int *) ;

__attribute__((used)) static void *pthread_thread(void *arg)
{
 fetcher_thread((prog_state *)arg);
 return ((void*)0);
}
