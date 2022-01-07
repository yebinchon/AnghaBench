
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* uint16_t ;
typedef int buf ;
struct TYPE_3__ {int HeaderSize; void* TransUniDefaultChar; void* UniDefaultChar; void* TransDefaultChar; void* DefaultChar; void* MaximumCharacterSize; void* CodePage; } ;
typedef TYPE_1__ NLS_FILE_HEADER ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ isspace (char) ;
 int printf (char*,...) ;
 char* strstr (char*,char*) ;
 int strtoul (char*,char**,int) ;

int
txt_get_header(const char *file_path, NLS_FILE_HEADER *header)
{
    FILE *file;
    char *p;
    char buf[256];
    uint32_t line = 0;
    int res = 0;
    int found;
    uint32_t val;

    file = fopen(file_path, "r");
    if (!file)
    {
        printf("Unable to read TXT file.\n");
        return 0;
    }


    found = 0;
    while (fgets(buf, sizeof(buf), file))
    {
        ++line;

        p = strstr(buf, "CODEPAGE");
        if (p)
        {

            p += 8;


            while (isspace(*p)) ++p;


            val = strtoul(p, &p, 10);


            if (val > 0xFFFF)
            {
                printf("Wrong codepage: %u (line: %u)\n", val, line);
                goto Cleanup;
            }

            header->CodePage = (uint16_t)val;

            found = 1;
            break;
        }
    }

    if (!found)
    {
        printf("CODEPAGE not found.\n");
        goto Cleanup;
    }


    found = 0;
    while (fgets(buf, sizeof(buf), file))
    {
        ++line;

        p = strstr(buf, "CPINFO");
        if (p)
        {

            p += 6;


            while (isspace(*p)) ++p;


            val = strtoul(p, &p, 10);


            if (val != 1 && val != 2)
            {
                printf("Wrong character size: %u (line: %u)\n", val, line);
                goto Cleanup;
            }

            header->MaximumCharacterSize = (uint16_t)val;


            while (isspace(*p)) ++p;


            val = strtoul(p, &p, 16);
            header->DefaultChar = (uint16_t)val;

            header->TransDefaultChar = (uint16_t)val;


            while (isspace(*p)) ++p;


            val = strtoul(p, &p, 16);
            header->UniDefaultChar = (uint16_t)val;

            header->TransUniDefaultChar = (uint16_t)val;

            found = 1;
            break;
        }
    }

    if (!found)
    {
        printf("CPINFO not found.\n");
        goto Cleanup;
    }

    header->HeaderSize = sizeof(NLS_FILE_HEADER) / sizeof(uint16_t);

    res = 1;

Cleanup:
    fclose(file);

    return res;
}
