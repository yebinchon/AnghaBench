
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int fmd_hdl_t ;


 scalar_t__ strcmp (char const*,char*) ;

int32_t
fmd_prop_get_int32(fmd_hdl_t *hdl, const char *name)
{





 if (strcmp(name, "spare_on_remove") == 0)
  return (1);

 if (strcmp(name, "io_N") == 0 || strcmp(name, "checksum_N") == 0)
  return (10);

 return (0);
}
