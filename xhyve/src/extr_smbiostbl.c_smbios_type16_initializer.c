
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct smbios_table_type16 {int ndevs; scalar_t__ xsize; } ;
struct smbios_structure {int dummy; } ;


 scalar_t__ guest_himem ;
 scalar_t__ guest_lomem ;
 int smbios_generic_initializer (struct smbios_structure*,char const**,char*,char**,int *,int *) ;
 int type16_handle ;

__attribute__((used)) static int
smbios_type16_initializer(struct smbios_structure *template_entry,
    const char **template_strings, char *curaddr, char **endaddr,
    uint16_t *n, uint16_t *size)
{
 struct smbios_table_type16 *type16;

 type16_handle = *n;
 smbios_generic_initializer(template_entry, template_strings,
     curaddr, endaddr, n, size);
 type16 = (struct smbios_table_type16 *)curaddr;
 type16->xsize = guest_lomem + guest_himem;
 type16->ndevs = guest_himem > 0 ? 2 : 1;

 return (0);
}
