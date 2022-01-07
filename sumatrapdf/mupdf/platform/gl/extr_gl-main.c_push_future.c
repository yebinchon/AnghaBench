
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * future ;
 int future_count ;
 int memmove (int *,int *,int) ;
 int nelem (int *) ;
 int save_mark () ;

__attribute__((used)) static void push_future(void)
{
 if (future_count + 1 >= (int)nelem(future))
 {
  memmove(future, future + 1, sizeof *future * (nelem(future) - 1));
  future[future_count] = save_mark();
 }
 else
 {
  future[future_count++] = save_mark();
 }
}
