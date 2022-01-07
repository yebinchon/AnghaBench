
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {struct socket_info* next; } ;


 int skynet_free (struct socket_info*) ;

void
socket_info_release(struct socket_info *si) {
 while (si) {
  struct socket_info *temp = si;
  si = si->next;
  skynet_free(temp);
 }
}
