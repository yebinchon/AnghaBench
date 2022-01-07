
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Chunk ;


 int chunk_cmp_impl (int const*,int const*) ;

__attribute__((used)) static int
chunk_cmp(const void *c1, const void *c2)
{
 return chunk_cmp_impl(*((const Chunk **) c1), *((const Chunk **) c2));
}
