
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long int64_t ;
typedef int fmd_hdl_t ;


 scalar_t__ strcmp (char const*,char*) ;

int64_t
fmd_prop_get_int64(fmd_hdl_t *hdl, const char *name)
{





 if (strcmp(name, "remove_timeout") == 0)
  return (15ULL * 1000ULL * 1000ULL * 1000ULL);

 if (strcmp(name, "io_T") == 0 || strcmp(name, "checksum_T") == 0)
  return (1000ULL * 1000ULL * 1000ULL * 600ULL);

 return (0);
}
