
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MuError ;


 int ReleaseSemaphore (int ,int,int *) ;
 int assert (int) ;
 int fprintf (int ,char*,int) ;
 int loaded ;
 int stderr ;

__attribute__((used)) static void render_progress(void *cookie, MuError error)
{
 assert((int)cookie == 5678);

 fprintf(stderr, "render_progress: error=%d\n", error);
 (void)ReleaseSemaphore(loaded, 1, ((void*)0));
}
