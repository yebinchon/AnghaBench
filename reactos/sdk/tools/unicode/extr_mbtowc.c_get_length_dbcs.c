
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbcs_table {unsigned char* cp2uni_leadbytes; } ;



__attribute__((used)) static inline int get_length_dbcs( const struct dbcs_table *table,
                                   const unsigned char *src, unsigned int srclen )
{
    const unsigned char * const cp2uni_lb = table->cp2uni_leadbytes;
    int len;

    for (len = 0; srclen; srclen--, src++, len++)
    {
        if (cp2uni_lb[*src] && srclen > 1 && src[1])
        {
            src++;
            srclen--;
        }
    }
    return len;
}
