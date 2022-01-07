
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct smbios_structure {int dummy; } ;
struct smbios_entry_point {int dummy; } ;
typedef int (* initializer_func_t ) (struct smbios_structure*,char const**,char*,char**,scalar_t__*,scalar_t__*) ;
struct TYPE_2__ {char** strings; int (* initializer ) (struct smbios_structure*,char const**,char*,char**,scalar_t__*,scalar_t__*) ;struct smbios_structure* entry; } ;


 int ENOMEM ;
 scalar_t__ SMBIOS_BASE ;
 int SMBIOS_MAX_LENGTH ;
 int assert (int) ;
 int fprintf (int ,char*) ;
 int guest_himem ;
 int guest_lomem ;
 char* paddr_guest2host (scalar_t__,int) ;
 int smbios_ep_finalizer (struct smbios_entry_point*,scalar_t__,scalar_t__,scalar_t__) ;
 int smbios_ep_initializer (struct smbios_entry_point*,scalar_t__) ;
 TYPE_1__* smbios_template ;
 int stderr ;
 int stub1 (struct smbios_structure*,char const**,char*,char**,scalar_t__*,scalar_t__*) ;
 int xh_vm_get_highmem_size () ;
 int xh_vm_get_lowmem_size () ;

int
smbios_build(void)
{
 struct smbios_entry_point *smbios_ep;
 uint16_t n;
 uint16_t maxssize;
 char *curaddr, *startaddr, *ststartaddr;
 int i;
 int err;

 guest_lomem = xh_vm_get_lowmem_size();
 guest_himem = xh_vm_get_highmem_size();

 startaddr = paddr_guest2host(SMBIOS_BASE, SMBIOS_MAX_LENGTH);
 if (startaddr == ((void*)0)) {
  fprintf(stderr, "smbios table requires mapped mem\n");
  return (ENOMEM);
 }

 curaddr = startaddr;

 smbios_ep = (struct smbios_entry_point *)curaddr;
 smbios_ep_initializer(smbios_ep, SMBIOS_BASE +
     sizeof(struct smbios_entry_point));
 curaddr += sizeof(struct smbios_entry_point);
 ststartaddr = curaddr;

 n = 0;
 maxssize = 0;
 for (i = 0; smbios_template[i].entry != ((void*)0); i++) {
  struct smbios_structure *entry;
  const char **strings;
  initializer_func_t initializer;
  char *endaddr;
  uint16_t size;

  entry = smbios_template[i].entry;
  strings = smbios_template[i].strings;
  initializer = smbios_template[i].initializer;

  err = (*initializer)(entry, strings, curaddr, &endaddr,
      &n, &size);
  if (err != 0)
   return (err);

  if (size > maxssize)
   maxssize = size;

  curaddr = endaddr;
 }

 assert(curaddr - startaddr < SMBIOS_MAX_LENGTH);
 smbios_ep_finalizer(smbios_ep, ((uint16_t) (curaddr - ststartaddr)), n,
  maxssize);

 return (0);
}
