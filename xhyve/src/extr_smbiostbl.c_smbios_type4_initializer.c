
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct smbios_table_type4 {scalar_t__ socket; } ;
struct smbios_structure {int dummy; } ;


 int guest_ncpus ;
 int smbios_generic_initializer (struct smbios_structure*,char const**,char*,char**,int *,int *) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int
smbios_type4_initializer(struct smbios_structure *template_entry,
    const char **template_strings, char *curaddr, char **endaddr,
    uint16_t *n, uint16_t *size)
{
 int i;

 for (i = 0; i < guest_ncpus; i++) {
  struct smbios_table_type4 *type4;
  char *p;
  int nstrings, len;

  smbios_generic_initializer(template_entry, template_strings,
      curaddr, endaddr, n, size);
  type4 = (struct smbios_table_type4 *)curaddr;
  p = curaddr + sizeof (struct smbios_table_type4);
  nstrings = 0;
  while (p < *endaddr - 1) {
   if (*p++ == '\0')
    nstrings++;
  }
  len = sprintf(*endaddr - 1, "CPU #%d", i) + 1;
  *endaddr += len - 1;
  *(*endaddr) = '\0';
  (*endaddr)++;
  type4->socket = (uint8_t) (nstrings + 1);
  curaddr = *endaddr;
 }

 return (0);
}
