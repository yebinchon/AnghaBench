
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int buf ;
typedef char WCHAR ;
typedef int UINT ;
struct TYPE_5__ {int MaxCharSize; char UnicodeDefaultChar; void** LeadByte; scalar_t__ DefaultChar; int CodePage; } ;
typedef int FILE ;
typedef int DWORD ;
typedef TYPE_1__ CPINFOEXA ;
typedef void* BYTE ;


 int MAX_LEADBYTES ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 scalar_t__ isspace (char) ;
 scalar_t__ malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int patch_codepage_info (TYPE_1__*) ;
 int printf (char*,...) ;
 scalar_t__ strstr (char*,char*) ;
 int strtol (char*,char**,int ) ;

__attribute__((used)) static WCHAR *Load_CP2Unicode_Table(char *table_name, UINT cp, CPINFOEXA *cpi)
{
    char buf[256];
    char *p;
    DWORD n, value;
    FILE *file;
    WCHAR *table;
    int lb_ranges, lb_range_started, line;

    printf("Loading translation table \"%s\"\n", table_name);


    memset(cpi, 0, sizeof(CPINFOEXA));
    cpi->CodePage = cp;
    *(WCHAR *)cpi->DefaultChar = '?';
    cpi->MaxCharSize = 1;
    cpi->UnicodeDefaultChar = '?';

    patch_codepage_info(cpi);

    table = (WCHAR *)malloc(sizeof(WCHAR) * 65536);
    if(!table) {
        printf("Not enough memory for Codepage to Unicode table\n");
        return ((void*)0);
    }

    for(n = 0; n < 256; n++)
        table[n] = (WCHAR)n;

    for(n = 256; n < 65536; n++)
        table[n] = cpi->UnicodeDefaultChar;

    file = fopen(table_name, "r");
    if(file == ((void*)0)) {
        free(table);
        return ((void*)0);
    }

    line = 0;
    lb_ranges = 0;
    lb_range_started = 0;

    while(fgets(buf, sizeof(buf), file)) {
        line++;
        p = buf;
        while(isspace(*p)) p++;

        if(!*p || p[0] == '#')
            continue;

        n = strtol(p, &p, 0);
        if(n > 0xFFFF) {
            printf("Line %d: Entry 0x%06lX: File \"%s\" corrupted\n", line, n, table_name);
            continue;
        }

        if(n > 0xFF && cpi->MaxCharSize != 2) {

            cpi->MaxCharSize = 2;
        }

        while(isspace(*p)) p++;

        if(!*p || p[0] == '#') {

        }
        else {
            value = strtol(p, &p, 0);
            if(value > 0xFFFF) {
                printf("Line %d: Entry 0x%06lX unicode value: File \"%s\" corrupted\n", line, n, table_name);
            }
            table[n] = (WCHAR)value;
        }


        while(*p && *p != '#') p++;

        if(*p == '#' && strstr(p, "DBCS LEAD BYTE")) {

            if(n > 0xFF) {
                printf("Line %d: Entry 0x%04lX: Error: DBCS lead byte overflowed\n", line, n);
                continue;
            }

            table[n] = (WCHAR)0;

            if(lb_range_started) {
                cpi->LeadByte[(lb_ranges - 1) * 2 + 1] = (BYTE)n;
            }
            else {

                if(lb_ranges < MAX_LEADBYTES/2) {
                    lb_ranges++;
                    lb_range_started = 1;
                    cpi->LeadByte[(lb_ranges - 1) * 2] = (BYTE)n;
                }
                else
                    printf("Line %d: Error: could not start new lead byte range\n", line);
            }
        }
        else {
            if(lb_range_started)
                lb_range_started = 0;
        }
    }

    fclose(file);

    return table;
}
