
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_location ;


 int currentpage ;
 scalar_t__ eqloc (int ,int ) ;
 int * future ;
 size_t future_count ;
 int push_history () ;
 int restore_mark (int ) ;

__attribute__((used)) static void pop_future(void)
{
 fz_location here = currentpage;
 push_history();
 while (future_count > 0 && eqloc(currentpage, here))
  restore_mark(future[--future_count]);
 push_history();
}
