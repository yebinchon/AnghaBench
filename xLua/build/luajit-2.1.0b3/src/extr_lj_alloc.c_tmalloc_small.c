
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int tchunkptr ;
typedef TYPE_1__* mstate ;
typedef int mchunkptr ;
typedef int bindex_t ;
struct TYPE_8__ {int treemap; } ;


 size_t MIN_CHUNK_SIZE ;
 void* chunk2mem (int ) ;
 int chunk_plus_offset (int ,size_t) ;
 size_t chunksize (int ) ;
 int leftmost_child (int ) ;
 int lj_ffs (int ) ;
 int replace_dv (TYPE_1__*,int ,size_t) ;
 int set_inuse_and_pinuse (TYPE_1__*,int ,size_t) ;
 int set_size_and_pinuse_of_free_chunk (int ,size_t) ;
 int set_size_and_pinuse_of_inuse_chunk (TYPE_1__*,int ,size_t) ;
 int * treebin_at (TYPE_1__*,int ) ;
 int unlink_large_chunk (TYPE_1__*,int ) ;

__attribute__((used)) static void *tmalloc_small(mstate m, size_t nb)
{
  tchunkptr t, v;
  mchunkptr r;
  size_t rsize;
  bindex_t i = lj_ffs(m->treemap);

  v = t = *treebin_at(m, i);
  rsize = chunksize(t) - nb;

  while ((t = leftmost_child(t)) != 0) {
    size_t trem = chunksize(t) - nb;
    if (trem < rsize) {
      rsize = trem;
      v = t;
    }
  }

  r = chunk_plus_offset(v, nb);
  unlink_large_chunk(m, v);
  if (rsize < MIN_CHUNK_SIZE) {
    set_inuse_and_pinuse(m, v, (rsize + nb));
  } else {
    set_size_and_pinuse_of_inuse_chunk(m, v, nb);
    set_size_and_pinuse_of_free_chunk(r, rsize);
    replace_dv(m, r, rsize);
  }
  return chunk2mem(v);
}
