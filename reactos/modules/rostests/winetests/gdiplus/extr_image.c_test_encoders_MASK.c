#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int UINT ;
struct TYPE_5__ {int /*<<< orphan*/  FormatDescription; } ;
typedef  TYPE_1__ ImageCodecInfo ;
typedef  int /*<<< orphan*/  GpStatus ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 scalar_t__ CSTR_EQUAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char const*,int) ; 
 int FALSE ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 
 int /*<<< orphan*/  GenericError ; 
 int /*<<< orphan*/  LOCALE_SYSTEM_DEFAULT ; 
 int /*<<< orphan*/  Ok ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    GpStatus stat;
    UINT n;
    UINT s;
    ImageCodecInfo *codecs;
    int i;
    int bmp_found;

    static const CHAR bmp_format[] = "BMP";

    stat = FUNC4(&n, &s);
    FUNC6(stat, Ok);

    codecs = FUNC1(s);
    if (!codecs)
        return;

    stat = FUNC3(n, s, NULL);
    FUNC6(GenericError, stat);

    stat = FUNC3(0, s, codecs);
    FUNC6(GenericError, stat);

    stat = FUNC3(n, s-1, codecs);
    FUNC6(GenericError, stat);

    stat = FUNC3(n, s+1, codecs);
    FUNC6(GenericError, stat);

    stat = FUNC3(n, s, codecs);
    FUNC6(stat, Ok);

    bmp_found = FALSE;
    for (i = 0; i < n; i++)
        {
            CHAR desc[32];

            FUNC5(CP_ACP, 0, codecs[i].FormatDescription, -1,
                                desc, 32, 0, 0);

            if (FUNC0(LOCALE_SYSTEM_DEFAULT, 0,
                               desc, -1,
                               bmp_format, -1) == CSTR_EQUAL) {
                bmp_found = TRUE;
                break;
            }
        }
    if (!bmp_found)
        FUNC7(FALSE, "No BMP codec found.\n");

    FUNC2(codecs);
}