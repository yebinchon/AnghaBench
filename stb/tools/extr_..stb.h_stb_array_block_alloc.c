
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (int) ;

void **stb_array_block_alloc(int count, int blocksize)
{
   int i;
   char *p = (char *) malloc(sizeof(void *) * count + count * blocksize);
   void **q;
   if (p == ((void*)0)) return ((void*)0);
   q = (void **) p;
   p += sizeof(void *) * count;
   for (i=0; i < count; ++i)
      q[i] = p + i * blocksize;
   return q;
}
