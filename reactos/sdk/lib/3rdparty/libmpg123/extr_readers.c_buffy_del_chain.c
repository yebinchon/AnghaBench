
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffy {struct buffy* next; } ;


 int buffy_del (struct buffy*) ;

__attribute__((used)) static void buffy_del_chain(struct buffy* buf)
{
 while(buf)
 {
  struct buffy* next = buf->next;
  buffy_del(buf);
  buf = next;
 }
}
