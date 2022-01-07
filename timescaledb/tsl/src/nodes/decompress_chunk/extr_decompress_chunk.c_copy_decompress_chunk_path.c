
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DecompressChunkPath ;


 int memcpy (int *,int *,int) ;
 int * palloc (int) ;

__attribute__((used)) static DecompressChunkPath *
copy_decompress_chunk_path(DecompressChunkPath *src)
{
 DecompressChunkPath *dst = palloc(sizeof(DecompressChunkPath));
 memcpy(dst, src, sizeof(DecompressChunkPath));

 return dst;
}
