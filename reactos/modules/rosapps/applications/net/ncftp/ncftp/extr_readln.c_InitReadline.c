
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CompletionFunction ;
 int LoadHistory () ;
 int ReCacheBookmarks () ;
 int gScreenColumns ;
 int gl_completion_proc ;
 int gl_setwidth (int ) ;

void
InitReadline(void)
{
 gl_completion_proc = CompletionFunction;
 gl_setwidth(gScreenColumns);
 LoadHistory();
 ReCacheBookmarks();
}
