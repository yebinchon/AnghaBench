
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int offset_errors; } ;
struct TYPE_4__ {int PointerToRawData; } ;
typedef TYPE_1__* PIMAGE_SECTION_HEADER ;


 TYPE_1__* get_sectionheader (char*) ;
 int l2l_dbg (int,char*,unsigned int) ;
 int print_offset (char*,size_t,char*) ;
 int printf (char*) ;
 int sprintf (char*,char*) ;
 TYPE_2__ summ ;

__attribute__((used)) static int
process_data(const void *FileData, size_t offset, char *toString)
{
    int res;

    PIMAGE_SECTION_HEADER PERosSymSectionHeader = get_sectionheader((char *)FileData);
    if (!PERosSymSectionHeader)
        return 2;

    res = print_offset((char *)FileData + PERosSymSectionHeader->PointerToRawData, offset, toString);
    if (res)
    {
        if (toString)
            sprintf(toString, "??:0");
        else
            printf("??:0");
        l2l_dbg(1, "Offset not found: %x\n", (unsigned int)offset);
        summ.offset_errors++;
    }

    return res;
}
