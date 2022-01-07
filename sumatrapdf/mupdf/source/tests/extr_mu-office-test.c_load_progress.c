
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ReleaseSemaphore (int ,int,int *) ;
 int assert (int) ;
 int fprintf (int ,char*,int,int) ;
 int loaded ;
 int stderr ;

__attribute__((used)) static void
load_progress(void *cookie, int pages_loaded, int complete)
{
 assert((intptr_t)cookie == 1234);

 fprintf(stderr, "load_progress: pages_loaded=%d complete=%d\n", pages_loaded, complete);

 if (complete)
  (void)ReleaseSemaphore(loaded, 1, ((void*)0));
}
