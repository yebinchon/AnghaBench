
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffy {struct buffy* next; } ;
struct bufferchain {scalar_t__ pool_fill; scalar_t__ pool_size; struct buffy* pool; int bufblock; } ;


 int buffy_del (struct buffy*) ;
 struct buffy* buffy_new (int ,int ) ;

__attribute__((used)) static int bc_fill_pool(struct bufferchain *bc)
{

 while(bc->pool_fill > bc->pool_size)
 {

  struct buffy* buf = bc->pool;
  bc->pool = buf->next;
  buffy_del(buf);
  --bc->pool_fill;
 }


 while(bc->pool_fill < bc->pool_size)
 {

  struct buffy* buf;
  buf = buffy_new(0, bc->bufblock);
  if(!buf) return -1;

  buf->next = bc->pool;
  bc->pool = buf;
  ++bc->pool_fill;
 }

 return 0;
}
