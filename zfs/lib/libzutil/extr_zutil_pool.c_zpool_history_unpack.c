
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint_t ;
typedef int uint64_t ;
typedef scalar_t__ uchar_t ;
typedef int reclen ;
typedef int nvlist_t ;


 int ENOMEM ;
 scalar_t__ ISP2 (int) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_unpack (char*,int,int **,int ) ;
 void* realloc (int **,int) ;

int
zpool_history_unpack(char *buf, uint64_t bytes_read, uint64_t *leftover,
    nvlist_t ***records, uint_t *numrecords)
{
 uint64_t reclen;
 nvlist_t *nv;
 int i;
 void *tmp;

 while (bytes_read > sizeof (reclen)) {


  for (i = 0, reclen = 0; i < sizeof (reclen); i++)
   reclen += (uint64_t)(((uchar_t *)buf)[i]) << (8*i);

  if (bytes_read < sizeof (reclen) + reclen)
   break;


  if (nvlist_unpack(buf + sizeof (reclen), reclen, &nv, 0) != 0)
   return (ENOMEM);
  bytes_read -= sizeof (reclen) + reclen;
  buf += sizeof (reclen) + reclen;


  (*numrecords)++;
  if (ISP2(*numrecords + 1)) {
   tmp = realloc(*records,
       *numrecords * 2 * sizeof (nvlist_t *));
   if (tmp == ((void*)0)) {
    nvlist_free(nv);
    (*numrecords)--;
    return (ENOMEM);
   }
   *records = tmp;
  }
  (*records)[*numrecords - 1] = nv;
 }

 *leftover = bytes_read;
 return (0);
}
