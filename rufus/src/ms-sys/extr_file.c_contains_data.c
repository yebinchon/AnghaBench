
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int FILE ;


 int MAX_DATA_LEN ;
 int _mm_free (unsigned char*) ;
 unsigned char* _mm_malloc (int ,int) ;
 scalar_t__ memcmp (void const*,unsigned char*,size_t) ;
 int read_data (int *,scalar_t__,unsigned char*,scalar_t__) ;

int contains_data(FILE *fp, uint64_t Position,
 const void *pData, uint64_t Len)
{
   int r = 0;
   unsigned char *aucBuf = _mm_malloc(MAX_DATA_LEN, 16);

   if(aucBuf == ((void*)0))
      return 0;

   if(!read_data(fp, Position, aucBuf, Len))
      goto out;

   if(memcmp(pData, aucBuf, (size_t)Len))
      goto out;

   r = 1;

out:
   _mm_free(aucBuf);
   return r;
}
