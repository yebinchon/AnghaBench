
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bitstream {int current; int* buffer; int length; } ;
typedef int DWORD ;
typedef int BYTE ;



__attribute__((used)) static const char *lookup_code(const BYTE *table, DWORD table_size, struct bitstream *bits)
{
    const BYTE *p = table;

    while (p < table + table_size && *p == 0x80)
    {
        if (p + 2 >= table + table_size) return ((void*)0);

        if (!(bits->current & 0xff))
        {
            if (!bits->length) return ((void*)0);
            bits->current = (*bits->buffer << 8) | 1;
            bits->buffer++;
            bits->length--;
        }

        if (bits->current & 0x8000)
        {
            p += 3;
        }
        else
        {
            p = table + (*(p + 2) | (*(p + 1) << 8));
        }

        bits->current <<= 1;
    }

    if (p + 1 < table + table_size && *(p + 1))
    {

        const BYTE *q = p + 1;
        while (q < table + table_size && *q) q++;
        return (q < table + table_size) ? (const char *)(p + 1) : ((void*)0);
    }

    return ((void*)0);
}
