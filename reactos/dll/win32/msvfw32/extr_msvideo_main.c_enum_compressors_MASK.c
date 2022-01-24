#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ szDescription; int /*<<< orphan*/  fccHandler; int /*<<< orphan*/  fccType; } ;
struct codec_info {scalar_t__ hic; TYPE_2__ icinfo; } ;
typedef  int /*<<< orphan*/  icinfo ;
typedef  scalar_t__ UINT ;
struct TYPE_8__ {int /*<<< orphan*/  biCompression; } ;
struct TYPE_11__ {TYPE_1__ bmiHeader; } ;
struct TYPE_10__ {TYPE_7__* lpbiIn; int /*<<< orphan*/  fccType; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_2__ ICINFO ;
typedef  int /*<<< orphan*/  HWND ;
typedef  scalar_t__ HIC ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_3__ COMPVARS ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CB_ADDSTRING ; 
 int /*<<< orphan*/  CB_SETITEMDATA ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,TYPE_7__*,int /*<<< orphan*/ *) ; 
 scalar_t__ ICERR_OK ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_2__*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  ICMODE_COMPRESS ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct codec_info* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC9(HWND list, COMPVARS *pcv, BOOL enum_all)
{
    UINT id, total = 0;
    ICINFO icinfo;

    id = 0;

    while (FUNC3(pcv->fccType, id, &icinfo))
    {
        struct codec_info *ic;
        DWORD idx;
        HIC hic;

        id++;

        hic = FUNC4(icinfo.fccType, icinfo.fccHandler, ICMODE_COMPRESS);

        if (hic)
        {
            /* for unknown reason fccHandler reported by the driver
             * doesn't always work, use the one returned by ICInfo instead.
             */
            DWORD fccHandler = icinfo.fccHandler;

            if (!enum_all && pcv->lpbiIn)
            {
                if (FUNC1(hic, pcv->lpbiIn, NULL) != ICERR_OK)
                {
                    FUNC6("fccHandler %s doesn't support input DIB format %d\n",
                          FUNC8(icinfo.fccHandler), pcv->lpbiIn->bmiHeader.biCompression);
                    FUNC0(hic);
                    continue;
                }
            }

            FUNC2(hic, &icinfo, sizeof(icinfo));
            icinfo.fccHandler = fccHandler;

            idx = FUNC5(list, CB_ADDSTRING, 0, (LPARAM)icinfo.szDescription);

            ic = FUNC7(sizeof(*ic));
            ic->icinfo = icinfo;
            ic->hic = hic;
            FUNC5(list, CB_SETITEMDATA, idx, (LPARAM)ic);
        }
        total++;
    }

    return total != 0;
}