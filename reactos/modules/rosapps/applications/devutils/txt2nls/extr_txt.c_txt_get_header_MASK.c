#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  void* uint16_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int HeaderSize; void* TransUniDefaultChar; void* UniDefaultChar; void* TransDefaultChar; void* DefaultChar; void* MaximumCharacterSize; void* CodePage; } ;
typedef  TYPE_1__ NLS_FILE_HEADER ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 char* FUNC5 (char*,char*) ; 
 int FUNC6 (char*,char**,int) ; 

int
FUNC7(const char *file_path, NLS_FILE_HEADER *header)
{
    FILE *file;
    char *p;
    char buf[256];
    uint32_t line = 0;
    int res = 0;
    int found;
    uint32_t val;

    file = FUNC2(file_path, "r");
    if (!file)
    {
        FUNC4("Unable to read TXT file.\n");
        return 0;
    }

    /* Find CODEPAGE entry */
    found = 0;
    while (FUNC1(buf, sizeof(buf), file))
    {
        ++line;

        p = FUNC5(buf, "CODEPAGE");
        if (p)
        {
            /* Length of CODEPAGE string is 8 chars */
            p += 8;

            /* Skip all spaces after CODEPAGE */
            while (FUNC3(*p)) ++p;

            /* Convert string to uint32_t */
            val = FUNC6(p, &p, 10);

            /* Validate codepage value */
            if (val > 0xFFFF)
            {
                FUNC4("Wrong codepage: %u (line: %u)\n", val, line);
                goto Cleanup;
            }

            header->CodePage = (uint16_t)val;

            found = 1;
            break;
        }
    }

    if (!found)
    {
        FUNC4("CODEPAGE not found.\n");
        goto Cleanup;
    }

    /* Find CPINFO entry */
    found = 0;
    while (FUNC1(buf, sizeof(buf), file))
    {
        ++line;

        p = FUNC5(buf, "CPINFO");
        if (p)
        {
            /* Length of CPINFO string is 6 chars */
            p += 6;

            /* Skip all spaces after CPINFO */
            while (FUNC3(*p)) ++p;

            /* Convert string to uint32_t */
            val = FUNC6(p, &p, 10);

            /* Validate value */
            if (val != 1 && val != 2)
            {
                FUNC4("Wrong character size: %u (line: %u)\n", val, line);
                goto Cleanup;
            }

            header->MaximumCharacterSize = (uint16_t)val;

            /* Skip all spaces after character size */
            while (FUNC3(*p)) ++p;

            /* Convert string to uint32_t */
            val = FUNC6(p, &p, 16);
            header->DefaultChar = (uint16_t)val;
            /* By default set value as DefaultChar */
            header->TransDefaultChar = (uint16_t)val;

            /* Skip all spaces after default char */
            while (FUNC3(*p)) ++p;

            /* Convert string to uint32_t */
            val = FUNC6(p, &p, 16);
            header->UniDefaultChar = (uint16_t)val;
            /* By default set value as UniDefaultChar */
            header->TransUniDefaultChar = (uint16_t)val;

            found = 1;
            break;
        }
    }

    if (!found)
    {
        FUNC4("CPINFO not found.\n");
        goto Cleanup;
    }

    header->HeaderSize = sizeof(NLS_FILE_HEADER) / sizeof(uint16_t);

    res = 1;

Cleanup:
    FUNC0(file);

    return res;
}