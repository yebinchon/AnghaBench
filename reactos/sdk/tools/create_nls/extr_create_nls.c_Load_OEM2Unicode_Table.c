
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
typedef scalar_t__ WCHAR ;
typedef int UINT ;
struct TYPE_3__ {int CodePage; } ;
typedef int FILE ;
typedef int DWORD ;
typedef TYPE_1__ CPINFOEXA ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int free (scalar_t__*) ;
 scalar_t__ isspace (char) ;
 scalar_t__ malloc (int) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 int printf (char*,...) ;
 int strtol (char*,char**,int) ;

__attribute__((used)) static WCHAR *Load_OEM2Unicode_Table(char *table_name, WCHAR *def_table, UINT cp, CPINFOEXA *cpi)
{
    char buf[256];
    char *p;
    DWORD n, value;
    FILE *file;
    WCHAR *table;
    int line;

    printf("Loading oem glyph table \"%s\"\n", table_name);

    table = (WCHAR *)malloc(sizeof(WCHAR) * 65536);
    if(!table) {
        printf("Not enough memory for Codepage to Unicode table\n");
        return ((void*)0);
    }

    memcpy(table, def_table, 65536 * sizeof(WCHAR));

    file = fopen(table_name, "r");
    if(file == ((void*)0)) {
        free(table);
        return ((void*)0);
    }

    line = 0;

    while(fgets(buf, sizeof(buf), file)) {
        line++;
        p = buf;
        while(isspace(*p)) p++;

        if(!*p || p[0] == '#')
            continue;

        value = strtol(p, &p, 16);
        if(value > 0xFFFF) {
            printf("Line %d: Entry 0x%06lX: File \"%s\" corrupted\n", line, value, table_name);
            continue;
        }

        while(isspace(*p)) p++;

        if(!*p || p[0] == '#') {

            continue;
        }
        else {
            n = strtol(p, &p, 16);
            if(n > 0xFFFF) {
                printf("Line %d: Entry 0x%06lX unicode value: File \"%s\" corrupted\n", line, value, table_name);
                continue;
            }
        }

        if (cpi->CodePage == 864) {
            while(isspace(*p)) p++;

            if(!*p || p[0] == '#' || p[0] == '-') {

                continue;
            }
            else {
                n = strtol(p, &p, 16);
                if(n > 0xFFFF) {
                    printf("Line %d: Entry 0x%06lX oem value: File \"%s\" corrupted\n", line, value, table_name);
                }
                continue;
            }
        }

        table[n] = (WCHAR)value;
    }

    fclose(file);

    return table;
}
