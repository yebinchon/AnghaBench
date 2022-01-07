
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffy {struct buffy* next; } ;
struct bufferchain {scalar_t__ pool_fill; scalar_t__ pool_size; struct buffy* pool; } ;


 int buffy_del (struct buffy*) ;

__attribute__((used)) static void bc_free(struct bufferchain *bc, struct buffy* buf)
{
 if(!buf) return;

 if(bc->pool_fill < bc->pool_size)
 {
  buf->next = bc->pool;
  bc->pool = buf;
  ++bc->pool_fill;
 }
 else buffy_del(buf);
}
