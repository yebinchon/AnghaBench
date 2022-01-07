
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;


 int printf (char*,...) ;

__attribute__((used)) static void
nls_print_wc_table(uint16_t *wc_table, uint16_t default_char, int is_dbcs)
{
    uint32_t ch;

    printf("WCTABLE:\n");

    for (ch = 0; ch <= 0xFFFF; ch++)
    {

        if (is_dbcs)
        {
            uint16_t *table = (uint16_t*)wc_table;

            if (table[ch] != default_char)
                printf("0x%04X 0x%04X\n", (unsigned int)ch, (unsigned int)table[ch]);
        }

        else
        {
            uint8_t *table = (uint8_t*)wc_table;

            if (table[ch] != default_char)
                printf("0x%04X 0x%02X\n", (unsigned int)ch, (unsigned int)table[ch]);
        }
    }

    printf("\n");
}
