
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sig_list {int sig; void* arg; int func; struct sig_list* next; } ;
typedef int strm_sighandler_t ;


 int STRM_NG ;
 int STRM_OK ;
 struct sig_list* malloc (int) ;
 struct sig_list* sig_list ;

__attribute__((used)) static int
add_sig(int sig, strm_sighandler_t func, void* arg)
{
  struct sig_list* node = malloc(sizeof(struct sig_list));

  if (node == ((void*)0)) return STRM_NG;
  node->next = sig_list;
  node->sig = sig;
  node->func = func;
  node->arg = arg;
  sig_list = node;
  return STRM_OK;
}
