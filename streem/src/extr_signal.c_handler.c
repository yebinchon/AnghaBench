
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sig_list {int sig; int arg; int (* func ) (int,int ) ;struct sig_list* next; } ;


 struct sig_list* sig_list ;
 int stub1 (int,int ) ;

__attribute__((used)) static void
handler(int sig)
{
  struct sig_list* list;

  for (list=sig_list; list; list=list->next) {
    if (list->sig == sig) {
      (*list->func)(sig, list->arg);
    }
  }
}
