
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int buf ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int free (int*) ;
 scalar_t__ isspace (char) ;
 int* malloc (int) ;
 int printf (char*,...) ;
 char* strstr (char*,char*) ;
 int strtoul (char*,char**,int) ;

uint16_t*
txt_get_wc_table(const char *file_path, uint16_t default_char, int is_dbcs)
{
    char buf[256];
    char *p;
    uint16_t *table;
    uint32_t index;
    uint32_t count = 0;
    uint32_t line = 0;
    int res = 0;
    int found;
    FILE *file;

    table = malloc(65536 * (is_dbcs ? sizeof(uint16_t) : sizeof(uint8_t)));
    if (!table)
    {
        printf("Memory allocation failure\n");
        return ((void*)0);
    }


    for (index = 0; index <= 65535; index++)
    {

        if (is_dbcs)
        {
            uint16_t *tmp = (uint16_t*)table;
            tmp[index] = default_char;
        }

        else
        {
            uint8_t *tmp = (uint8_t*)table;
            tmp[index] = default_char;
        }
    }

    file = fopen(file_path, "r");
    if (!file)
    {
        printf("Unable to read TXT file.\n");
        goto Cleanup;
    }


    found = 0;
    while (fgets(buf, sizeof(buf), file))
    {
        ++line;

        p = strstr(buf, "WCTABLE");
        if (p)
        {
            p += 7;


            while (isspace(*p)) ++p;

            count = strtoul(p, &p, 10);
            if (count == 0 || count > 65536)
            {
                printf("Wrong WCTABLE size: %u (line: %u)\n", count, line);
                goto Cleanup;
            }

            found = 1;
            break;
        }
    }

    if (!found)
    {
        printf("WCTABLE not found.\n");
        goto Cleanup;
    }


    while (fgets(buf, sizeof(buf), file) && count)
    {
        uint32_t cp_char;
        uint32_t uni_char;

        ++line;

        p = buf;


        while (isspace(*p)) ++p;

        if (!*p || p[0] == ';')
            continue;

        uni_char = strtoul(p, &p, 16);
        if (uni_char > 0xFFFF)
        {
            printf("Wrong unicode char value: %u (line: %u)\n", uni_char, line);
            goto Cleanup;
        }


        while (isspace(*p)) ++p;

        cp_char = strtoul(p, &p, 16);
        if ((is_dbcs && cp_char > 0xFFFF) || (!is_dbcs && cp_char > 0xFF))
        {
            printf("Wrong char value: %u (line: %u)\n", cp_char, line);
            goto Cleanup;
        }


        if (is_dbcs)
        {
            uint16_t *tmp = (uint16_t*)table;
            tmp[uni_char] = cp_char;
        }

        else
        {
            uint8_t *tmp = (uint8_t*)table;
            tmp[uni_char] = cp_char;
        }

        --count;
    }

    res = 1;

Cleanup:
    if (!res)
    {
        free(table);
        table = ((void*)0);
    }

    fclose(file);

    return table;
}
