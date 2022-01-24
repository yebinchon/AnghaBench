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
typedef  int /*<<< orphan*/  buf ;
typedef  scalar_t__ WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int CodePage; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  int DWORD ;
typedef  TYPE_1__ CPINFOEXA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*) ; 
 scalar_t__ FUNC4 (char) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int FUNC8 (char*,char**,int) ; 

__attribute__((used)) static WCHAR *FUNC9(char *table_name, WCHAR *def_table, UINT cp, CPINFOEXA *cpi)
{
    char buf[256];
    char *p;
    DWORD n, value;
    FILE *file;
    WCHAR *table;
    int line;

    FUNC7("Loading oem glyph table \"%s\"\n", table_name);

    table = (WCHAR *)FUNC5(sizeof(WCHAR) * 65536);
    if(!table) {
        FUNC7("Not enough memory for Codepage to Unicode table\n");
        return NULL;
    }

    FUNC6(table, def_table, 65536 * sizeof(WCHAR));

    file = FUNC2(table_name, "r");
    if(file == NULL) {
        FUNC3(table);
        return NULL;
    }

    line = 0;

    while(FUNC1(buf, sizeof(buf), file)) {
        line++;
        p = buf;
        while(FUNC4(*p)) p++;

        if(!*p || p[0] == '#')
            continue;

        value = FUNC8(p, &p, 16);
        if(value > 0xFFFF) {
            FUNC7("Line %d: Entry 0x%06lX: File \"%s\" corrupted\n", line, value, table_name);
            continue;
        }

        while(FUNC4(*p)) p++;

        if(!*p || p[0] == '#') {
            /*printf("Line %d: Entry 0x%02lX has no Unicode value\n", line, n);*/
            continue;
        }
        else {
            n = FUNC8(p, &p, 16);
            if(n > 0xFFFF) {
                FUNC7("Line %d: Entry 0x%06lX unicode value: File \"%s\" corrupted\n", line, value, table_name);
                continue;
            }
        }

        if (cpi->CodePage == 864) {
            while(FUNC4(*p)) p++;

            if(!*p || p[0] == '#' || p[0] == '-') {
                /*printf("Line %d: Entry 0x%02lX has no Unicode value\n", line, n);*/
                continue;
            }
            else {
                n = FUNC8(p, &p, 16);
                if(n > 0xFFFF) {
                    FUNC7("Line %d: Entry 0x%06lX oem value: File \"%s\" corrupted\n", line, value, table_name);
                }
                continue;
            }
        }

        table[n] = (WCHAR)value;
    }

    FUNC0(file);

    return table;
}