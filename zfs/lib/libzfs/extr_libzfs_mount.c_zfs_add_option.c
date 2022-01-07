
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_prop_t ;
typedef int zfs_handle_t ;
typedef scalar_t__ uint64_t ;


 scalar_t__ getprop_uint64 (int *,int ,char**) ;
 int strlcat (char*,char*,int) ;
 int * strstr (char*,char*) ;

__attribute__((used)) static int
zfs_add_option(zfs_handle_t *zhp, char *options, int len,
    zfs_prop_t prop, char *on, char *off)
{
 char *source;
 uint64_t value;


 if ((strstr(options, on) != ((void*)0)) || (strstr(options, off) != ((void*)0)))
  return (0);





 value = getprop_uint64(zhp, prop, &source);

 (void) strlcat(options, ",", len);
 (void) strlcat(options, value ? on : off, len);

 return (0);
}
