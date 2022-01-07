
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uint16_t ;


 int printf (char*,...) ;

__attribute__((used)) static void
nls_print_mb_table(uint16_t *mb_table, uint16_t uni_default_char)
{
    uint32_t ch;

    printf("MBTABLE:\n");

    for (ch = 0; ch <= 0xFF; ch++)
    {
        if (mb_table[ch] != uni_default_char)
        {
            printf("0x%02X 0x%04X\n", (unsigned int)ch, (unsigned int)mb_table[ch]);
        }
    }

    printf("\n");
}
