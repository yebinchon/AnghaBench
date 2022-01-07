
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int uint_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef int boolean_t ;


 int B_TRUE ;
 int ENOMEM ;
 int NV_UNIQUE_NAME ;
 int ZPOOL_HIST_RECORD ;
 int free (char*) ;
 int get_history (int *,char*,int*,int*) ;
 char* malloc (int) ;
 scalar_t__ nvlist_add_nvlist_array (int *,int ,int **,int) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 int verify (int) ;
 int zpool_history_unpack (char*,int,int*,int ***,int*) ;

int
zpool_get_history(zpool_handle_t *zhp, nvlist_t **nvhisp, uint64_t *off,
    boolean_t *eof)
{
 char *buf;
 int buflen = 128 * 1024;
 nvlist_t **records = ((void*)0);
 uint_t numrecords = 0;
 int err, i;
 uint64_t start = *off;

 buf = malloc(buflen);
 if (buf == ((void*)0))
  return (ENOMEM);

 while (*off - start < 1024 * 1024) {
  uint64_t bytes_read = buflen;
  uint64_t leftover;

  if ((err = get_history(zhp, buf, off, &bytes_read)) != 0)
   break;


  if (!bytes_read) {
   *eof = B_TRUE;
   break;
  }

  if ((err = zpool_history_unpack(buf, bytes_read,
      &leftover, &records, &numrecords)) != 0)
   break;
  *off -= leftover;
  if (leftover == bytes_read) {




   buflen *= 2;
   free(buf);
   buf = malloc(buflen);
   if (buf == ((void*)0))
    return (ENOMEM);
  }
 }

 free(buf);

 if (!err) {
  verify(nvlist_alloc(nvhisp, NV_UNIQUE_NAME, 0) == 0);
  verify(nvlist_add_nvlist_array(*nvhisp, ZPOOL_HIST_RECORD,
      records, numrecords) == 0);
 }
 for (i = 0; i < numrecords; i++)
  nvlist_free(records[i]);
 free(records);

 return (err);
}
