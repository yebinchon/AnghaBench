
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






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
txt_get_glyph_table(const char *file_path, uint16_t uni_default_char)
{
    uint16_t *table;
    char buf[256];
    char *p;
    uint32_t count = 0;
    uint32_t index;
    uint32_t line = 0;
    int found;
    int res = 0;
    FILE *file;

    table = malloc(256 * sizeof(uint16_t));
    if (!table)
    {
        printf("Memory allocation failure\n");
        return ((void*)0);
    }


    for (index = 0; index <= 255; index++)
        table[index] = uni_default_char;

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

        p = strstr(buf, "GLYPHTABLE");
        if (p)
        {
            p += 10;


            while (isspace(*p)) ++p;

            count = strtoul(p, &p, 10);
            if (count == 0 || count > 256)
            {
                printf("Wrong GLYPHTABLE size: %u (line: %u)\n", count, line);
                goto Cleanup;
            }

            found = 1;
            break;
        }
    }

    if (!found)
    {
        printf("GLYPHTABLE not found.\n");
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

        cp_char = strtoul(p, &p, 16);
        if (cp_char > 0xFF)
        {
            printf("Wrong char value: %u (line: %u)\n", cp_char, line);
            goto Cleanup;
        }


        while (isspace(*p)) ++p;

        uni_char = strtoul(p, &p, 16);
        if (uni_char > 0xFFFF)
        {
            printf("Wrong unicode char value: %u (line: %u)\n", uni_char, line);
            goto Cleanup;
        }

        table[cp_char] = uni_char;
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
