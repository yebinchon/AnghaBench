#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 scalar_t__ FUNC4 (char) ; 
 int* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 char* FUNC7 (char*,char*) ; 
 int FUNC8 (char*,char**,int) ; 

uint16_t*
FUNC9(const char *file_path, uint16_t default_char, int is_dbcs)
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

    table = FUNC5(65536 * (is_dbcs ? sizeof(uint16_t) : sizeof(uint8_t)));
    if (!table)
    {
        FUNC6("Memory allocation failure\n");
        return NULL;
    }

    /* Set default value for all table items */
    for (index = 0; index <= 65535; index++)
    {
        /* DBCS code page */
        if (is_dbcs)
        {
            uint16_t *tmp = (uint16_t*)table;
            tmp[index] = default_char;
        }
        /* SBCS code page */
        else
        {
            uint8_t *tmp = (uint8_t*)table;
            tmp[index] = default_char;
        }
    }

    file = FUNC2(file_path, "r");
    if (!file)
    {
        FUNC6("Unable to read TXT file.\n");
        goto Cleanup;
    }

    /* Find WCTABLE entry */
    found = 0;
    while (FUNC1(buf, sizeof(buf), file))
    {
        ++line;

        p = FUNC7(buf, "WCTABLE");
        if (p)
        {
            p += 7;

            /* Skip spaces */
            while (FUNC4(*p)) ++p;

            count = FUNC8(p, &p, 10);
            if (count == 0 || count > 65536)
            {
                FUNC6("Wrong WCTABLE size: %u (line: %u)\n", count, line);
                goto Cleanup;
            }

            found = 1;
            break;
        }
    }

    if (!found)
    {
        FUNC6("WCTABLE not found.\n");
        goto Cleanup;
    }

    /* Parse next line */
    while (FUNC1(buf, sizeof(buf), file) && count)
    {
        uint32_t cp_char;
        uint32_t uni_char;

        ++line;

        p = buf;

        /* Skip spaces */
        while (FUNC4(*p)) ++p;

        if (!*p || p[0] == ';')
            continue;

        uni_char = FUNC8(p, &p, 16);
        if (uni_char > 0xFFFF)
        {
            FUNC6("Wrong unicode char value: %u (line: %u)\n", uni_char, line);
            goto Cleanup;
        }

        /* Skip spaces */
        while (FUNC4(*p)) ++p;

        cp_char = FUNC8(p, &p, 16);
        if ((is_dbcs && cp_char > 0xFFFF) || (!is_dbcs && cp_char > 0xFF))
        {
            FUNC6("Wrong char value: %u (line: %u)\n", cp_char, line);
            goto Cleanup;
        }

        /* DBCS code page */
        if (is_dbcs)
        {
            uint16_t *tmp = (uint16_t*)table;
            tmp[uni_char] = cp_char;
        }
        /* SBCS code page */
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
        FUNC3(table);
        table = NULL;
    }

    FUNC0(file);

    return table;
}