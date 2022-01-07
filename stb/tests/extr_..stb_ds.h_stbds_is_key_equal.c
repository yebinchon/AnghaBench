
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STBDS_HM_STRING ;
 scalar_t__ memcmp (void*,char*,size_t) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int stbds_is_key_equal(void *a, size_t elemsize, void *key, size_t keysize, int mode, size_t i)
{
  if (mode >= STBDS_HM_STRING)
    return 0==strcmp((char *) key, * (char **) ((char *) a + elemsize*i));
  else
    return 0==memcmp(key, (char *) a + elemsize*i, keysize);
}
