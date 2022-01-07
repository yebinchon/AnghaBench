
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef int ULONG ;
struct TYPE_2__ {int n_strx; int n_type; int n_value; int n_desc; int n_other; } ;
typedef int STAB_ENTRY ;
typedef TYPE_1__* PSTAB_ENTRY ;
typedef int PIMAGE_SECTION_HEADER ;
typedef int PIMAGE_FILE_HEADER ;


 int printf (char*,...) ;
 char* stab_type_name (int ) ;

__attribute__((used)) static void
IterateStabs(ULONG StabSymbolsLength, void *StabSymbolsBase,
             ULONG StabStringsLength, void *StabStringsBase,
             ULONG_PTR ImageBase, PIMAGE_FILE_HEADER PEFileHeader,
             PIMAGE_SECTION_HEADER PESectionHeaders)
{
  PSTAB_ENTRY e;
  ULONG Count, i;

  e = StabSymbolsBase;
  Count = StabSymbolsLength / sizeof(STAB_ENTRY);
  if (Count == 0)
    return;

  printf ( "type,other,desc,value,str\n" );
  for (i = 0; i < Count; i++)
    {
   printf ( "%s,%lu(0x%x),%lu(0x%x),%lu(0x%x),%s\n",
    stab_type_name(e[i].n_type),
    e[i].n_other,
    e[i].n_other,
    e[i].n_desc,
    e[i].n_desc,
    e[i].n_value,
    e[i].n_value,
    (char *) StabStringsBase + e[i].n_strx );
    }
}
