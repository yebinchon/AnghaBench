
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,unsigned char const) ;

__attribute__((used)) static
char*
dbg_print_physaddr(const unsigned char* addr, unsigned long addr_len)
{
    static char buffer[24];

    char* dest = buffer;
    *dest = '\0';

    while (addr_len--)
    {
        dest += sprintf(dest, "%02x", *addr);
        addr++;
        if (addr_len)
            *dest++ = ':';
    }

    return buffer;
}
