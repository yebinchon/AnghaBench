
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_location ;


 int currentpage ;
 scalar_t__ eqloc (int ,int ) ;
 int * history ;
 size_t history_count ;
 int push_future () ;
 int restore_mark (int ) ;

__attribute__((used)) static void pop_history(void)
{
 fz_location here = currentpage;
 push_future();
 while (history_count > 0 && eqloc(currentpage, here))
  restore_mark(history[--history_count]);
}
