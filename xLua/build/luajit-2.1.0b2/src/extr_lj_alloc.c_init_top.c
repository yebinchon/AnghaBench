
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* mstate ;
typedef TYPE_2__* mchunkptr ;
struct TYPE_10__ {int head; } ;
struct TYPE_9__ {size_t head; } ;
struct TYPE_8__ {size_t topsize; int trim_check; TYPE_2__* top; } ;


 int DEFAULT_TRIM_THRESHOLD ;
 size_t PINUSE_BIT ;
 int TOP_FOOT_SIZE ;
 size_t align_offset (int ) ;
 int chunk2mem (TYPE_2__*) ;
 TYPE_5__* chunk_plus_offset (TYPE_2__*,size_t) ;

__attribute__((used)) static void init_top(mstate m, mchunkptr p, size_t psize)
{

  size_t offset = align_offset(chunk2mem(p));
  p = (mchunkptr)((char *)p + offset);
  psize -= offset;

  m->top = p;
  m->topsize = psize;
  p->head = psize | PINUSE_BIT;

  chunk_plus_offset(p, psize)->head = TOP_FOOT_SIZE;
  m->trim_check = DEFAULT_TRIM_THRESHOLD;
}
