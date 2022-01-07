
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;
typedef int LOCKMODE ;
typedef int Hyperspace ;
typedef int Chunk ;


 int append_chunk ;
 int ** chunk_find_all (int *,int *,int ,int ,unsigned int*) ;

Chunk **
ts_chunk_find_all(Hyperspace *hs, List *dimension_vecs, LOCKMODE lockmode, unsigned int *num_chunks)
{
 return chunk_find_all(hs, dimension_vecs, append_chunk, lockmode, num_chunks);
}
