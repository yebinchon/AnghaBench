
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int loc; } ;


 int currentpage ;
 scalar_t__ eqloc (int ,int ) ;
 TYPE_1__* history ;
 int history_count ;
 int memmove (TYPE_1__*,TYPE_1__*,int) ;
 int nelem (TYPE_1__*) ;
 TYPE_1__ save_mark () ;

__attribute__((used)) static void push_history(void)
{
 if (history_count > 0 && eqloc(history[history_count-1].loc, currentpage))
  return;
 if (history_count + 1 >= (int)nelem(history))
 {
  memmove(history, history + 1, sizeof *history * (nelem(history) - 1));
  history[history_count] = save_mark();
 }
 else
 {
  history[history_count++] = save_mark();
 }
}
