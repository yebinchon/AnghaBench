
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffy {struct buffy* next; } ;
struct bufferchain {struct buffy* first; } ;


 int bc_fill_pool (struct bufferchain*) ;
 int bc_free (struct bufferchain*,struct buffy*) ;
 int bc_init (struct bufferchain*) ;

__attribute__((used)) static void bc_reset(struct bufferchain *bc)
{

 while(bc->first)
 {
  struct buffy* buf = bc->first;
  bc->first = buf->next;
  bc_free(bc, buf);
 }
 bc_fill_pool(bc);
 bc_init(bc);
}
