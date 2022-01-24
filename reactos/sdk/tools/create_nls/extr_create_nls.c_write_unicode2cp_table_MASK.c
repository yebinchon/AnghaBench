#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_4__ {int MaxCharSize; scalar_t__* DefaultChar; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ CPINFOEXA ;
typedef  scalar_t__ CHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (void*,int,int,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static BOOL FUNC5(FILE *out, CPINFOEXA *cpi, WCHAR *table)
{
    void *u2cp;
    WCHAR *wc;
    CHAR *c;
    int i;
    BOOL ret = TRUE;

    u2cp = FUNC2(cpi->MaxCharSize * 65536);
    if(!u2cp) {
        FUNC4("Not enough memory for Unicode to Codepage table\n");
        return FALSE;
    }

    if(cpi->MaxCharSize == 2) {
        wc = (WCHAR *)u2cp;
        for(i = 0; i < 65536; i++)
            wc[i] = *(WCHAR *)cpi->DefaultChar;

        for(i = 0; i < 65536; i++)
            if (table[i] != '?')
                wc[table[i]] = (WCHAR)i;
    }
    else {
        c = (CHAR *)u2cp;
        for(i = 0; i < 65536; i++)
            c[i] = cpi->DefaultChar[0];

        for(i = 0; i < 256; i++)
            if (table[i] != '?')
                c[table[i]] = (CHAR)i;
    }

    FUNC3(u2cp, cpi);

    if(FUNC1(u2cp, 1, cpi->MaxCharSize * 65536, out) != cpi->MaxCharSize * 65536)
        ret = FALSE;

    FUNC0(u2cp);

    return ret;
}