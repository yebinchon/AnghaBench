
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_node {int sz; struct buffer_node* next; scalar_t__ msg; } ;


 scalar_t__ memcmp (scalar_t__,char const*,int) ;

__attribute__((used)) static bool
check_sep(struct buffer_node * node, int from, const char *sep, int seplen) {
 for (;;) {
  int sz = node->sz - from;
  if (sz >= seplen) {
   return memcmp(node->msg+from,sep,seplen) == 0;
  }
  if (sz > 0) {
   if (memcmp(node->msg + from, sep, sz)) {
    return 0;
   }
  }
  node = node->next;
  sep += sz;
  seplen -= sz;
  from = 0;
 }
}
