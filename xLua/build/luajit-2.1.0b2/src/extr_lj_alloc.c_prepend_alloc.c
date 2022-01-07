
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef TYPE_1__* mstate ;
typedef TYPE_2__* mchunkptr ;
struct TYPE_20__ {size_t head; } ;
struct TYPE_19__ {size_t topsize; size_t dvsize; TYPE_2__* dv; TYPE_2__* top; } ;


 size_t PINUSE_BIT ;
 TYPE_2__* align_as_chunk (char*) ;
 void* chunk2mem (TYPE_2__*) ;
 TYPE_2__* chunk_plus_offset (TYPE_2__*,size_t) ;
 size_t chunksize (TYPE_2__*) ;
 int cinuse (TYPE_2__*) ;
 int insert_chunk (TYPE_1__*,TYPE_2__*,size_t) ;
 int set_free_with_pinuse (TYPE_2__*,size_t,TYPE_2__*) ;
 int set_size_and_pinuse_of_free_chunk (TYPE_2__*,size_t) ;
 int set_size_and_pinuse_of_inuse_chunk (TYPE_1__*,TYPE_2__*,size_t) ;
 int unlink_chunk (TYPE_1__*,TYPE_2__*,size_t) ;

__attribute__((used)) static void *prepend_alloc(mstate m, char *newbase, char *oldbase, size_t nb)
{
  mchunkptr p = align_as_chunk(newbase);
  mchunkptr oldfirst = align_as_chunk(oldbase);
  size_t psize = (size_t)((char *)oldfirst - (char *)p);
  mchunkptr q = chunk_plus_offset(p, nb);
  size_t qsize = psize - nb;
  set_size_and_pinuse_of_inuse_chunk(m, p, nb);


  if (oldfirst == m->top) {
    size_t tsize = m->topsize += qsize;
    m->top = q;
    q->head = tsize | PINUSE_BIT;
  } else if (oldfirst == m->dv) {
    size_t dsize = m->dvsize += qsize;
    m->dv = q;
    set_size_and_pinuse_of_free_chunk(q, dsize);
  } else {
    if (!cinuse(oldfirst)) {
      size_t nsize = chunksize(oldfirst);
      unlink_chunk(m, oldfirst, nsize);
      oldfirst = chunk_plus_offset(oldfirst, nsize);
      qsize += nsize;
    }
    set_free_with_pinuse(q, qsize, oldfirst);
    insert_chunk(m, q, qsize);
  }

  return chunk2mem(p);
}
