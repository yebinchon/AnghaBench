
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int PointerToRawData; int SizeOfRawData; int Name; } ;
typedef int PSTAB_ENTRY ;
typedef TYPE_1__* PIMAGE_SECTION_HEADER ;


 int printf (char*,int,int,int) ;
 scalar_t__ strcmp (int ,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (int ,char*,int ) ;

void find_stab_sections(void* p,PIMAGE_SECTION_HEADER section, unsigned cSections,
         PSTAB_ENTRY* ppStab,int* pLen,char** ppStr,int* pnStabStrLen)
{
 unsigned i;

    *ppStab = 0;
    *ppStr = 0;

 for ( i=1; i <= cSections; i++, section++ )
    {

  if(strcmp(section->Name,".stab") == 0)
        {
            *ppStab = (PSTAB_ENTRY)((int)p + section->PointerToRawData);
            *pLen = section->SizeOfRawData;
            printf("LOADER: .stab @ %x (offset %x) len = %x\n",*ppStab,section->PointerToRawData,section->SizeOfRawData);
        }
        else if(strncmp(section->Name,".stabstr",strlen(".stabstr")) == 0)
        {
            *ppStr = (char*)((int)p + section->PointerToRawData);
   *pnStabStrLen = section->SizeOfRawData;
            printf("LOADER: .stabstr @ %x (offset %x) len = %x\n",*ppStab,section->PointerToRawData,section->SizeOfRawData);
        }
    }


}
