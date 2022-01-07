
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sub_table ;
typedef int offsets ;
typedef scalar_t__ WORD ;
typedef scalar_t__ WCHAR ;
struct TYPE_3__ {int* LeadByte; } ;
typedef int FILE ;
typedef TYPE_1__ CPINFOEXA ;
typedef int BOOL ;


 int FALSE ;
 int MAKEWORD (int,int) ;
 int MAX_LEADBYTES ;
 int TRUE ;
 int fwrite (scalar_t__*,int,int,int *) ;
 int memset (scalar_t__*,int ,int) ;

__attribute__((used)) static BOOL write_lb_ranges(FILE *out, CPINFOEXA *cpi, WCHAR *table)
{
    WCHAR sub_table[256];
    WORD offset, offsets[256];
    int i, j, range;

    memset(offsets, 0, sizeof(offsets));

    offset = 0;

    for(i = 0; i < MAX_LEADBYTES; i += 2) {
        for(range = cpi->LeadByte[i]; range != 0 && range <= cpi->LeadByte[i + 1]; range++) {
            offset += 256;
            offsets[range] = offset;
        }
    }

    if(fwrite(offsets, 1, sizeof(offsets), out) != sizeof(offsets))
        return FALSE;

    for(i = 0; i < MAX_LEADBYTES; i += 2) {
        for(range = cpi->LeadByte[i]; range != 0 && range <= cpi->LeadByte[i + 1]; range++) {

            for(j = MAKEWORD(0, range); j <= MAKEWORD(0xFF, range); j++) {
                sub_table[j - MAKEWORD(0, range)] = table[j];
            }

            if(fwrite(sub_table, 1, sizeof(sub_table), out) != sizeof(sub_table))
                return FALSE;
        }
    }

    return TRUE;
}
