
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {struct socket_info* next; } ;


 int memset (struct socket_info*,int ,int) ;
 struct socket_info* skynet_malloc (int) ;

struct socket_info *
socket_info_create(struct socket_info *last) {
 struct socket_info *si = skynet_malloc(sizeof(*si));
 memset(si, 0 , sizeof(*si));
 si->next = last;
 return si;
}
