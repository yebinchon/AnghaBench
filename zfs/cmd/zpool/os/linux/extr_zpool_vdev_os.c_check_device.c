
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int boolean_t ;
typedef int blkid_cache ;


 int blkid_get_cache (int *,int *) ;
 int blkid_put_cache (int ) ;
 int check_disk (char const*,int ,int ,int ,int ) ;
 int fprintf (int ,char*) ;
 char* gettext (char*) ;
 int stderr ;

int
check_device(const char *path, boolean_t force,
    boolean_t isspare, boolean_t iswholedisk)
{
 blkid_cache cache;
 int error;

 error = blkid_get_cache(&cache, ((void*)0));
 if (error != 0) {
  (void) fprintf(stderr, gettext("unable to access the blkid "
      "cache.\n"));
  return (-1);
 }

 error = check_disk(path, cache, force, isspare, iswholedisk);
 blkid_put_cache(cache);

 return (error);
}
