
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {int CodePage; int MaximumCharacterSize; int DefaultChar; int UniDefaultChar; int TransUniDefaultChar; int* LeadByte; } ;
typedef TYPE_1__ NLS_FILE_HEADER ;


 size_t MAXIMUM_LEADBYTES ;
 int printf (char*,...) ;

__attribute__((used)) static void
nls_print_header(NLS_FILE_HEADER *header)
{
    uint32_t i;

    printf("HEADER:\n");
    printf("CodePage: %u\n", header->CodePage);
    printf("Character size: %u\n", header->MaximumCharacterSize);
    printf("Default char: 0x%02X\n", header->DefaultChar);
    printf("Default unicode char: 0x%04X\n", header->UniDefaultChar);
    printf("Trans default char: 0x%02X\n", header->TransUniDefaultChar);
    printf("Trans default unicode char: 0x%04X\n", header->TransUniDefaultChar);

    for (i = 0; i < MAXIMUM_LEADBYTES; i++)
    {
        printf("LeadByte[%u] = 0x%02X\n", i, header->LeadByte[i]);
    }

    printf("\n");
}
