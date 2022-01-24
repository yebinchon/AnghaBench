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
typedef  int /*<<< orphan*/  temp_path ;
typedef  int /*<<< orphan*/  psadobe ;
typedef  int /*<<< orphan*/  di ;
typedef  int /*<<< orphan*/  buf ;
typedef  int WORD ;
struct TYPE_3__ {int cbSize; char* lpszDocName; char* lpszOutput; scalar_t__ fwType; int /*<<< orphan*/ * lpszDatatype; } ;
typedef  int /*<<< orphan*/  HDC ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  TYPE_1__ DOCINFOA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DOWNLOADHEADER ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  POSTSCRIPT_PASSTHROUGH ; 
 int FUNC8 (scalar_t__,char*,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC10 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int,char*,...) ; 
 char* FUNC13 (char*,char) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int FUNC16 (char*) ; 

__attribute__((used)) static void FUNC17(HDC hdc)
{
    static const char psadobe[10] = "%!PS-Adobe";
    char buf[1024], *p;
    char temp_path[MAX_PATH], file_name[MAX_PATH];
    DOCINFOA di;
    DWORD ret;
    HANDLE hfile;

    FUNC7(sizeof(temp_path), temp_path);
    FUNC6(temp_path, "ps", 0, file_name);

    di.cbSize = sizeof(di);
    di.lpszDocName = "Let's dance";
    di.lpszOutput = file_name;
    di.lpszDatatype = NULL;
    di.fwType = 0;
    ret = FUNC9(hdc, &di);
    FUNC12(ret > 0, "StartDoc failed: %d\n", ret);

    FUNC15(buf + 2, "\n% ===> before DOWNLOADHEADER <===\n");
    *(WORD *)buf = FUNC16(buf + 2);
    ret = FUNC4(hdc, POSTSCRIPT_PASSTHROUGH, 0, buf, NULL);
    FUNC12(ret == *(WORD *)buf, "POSTSCRIPT_PASSTHROUGH failed: %d\n", ret);

    FUNC15(buf, "deadbeef");
    ret = FUNC5(hdc, DOWNLOADHEADER, 0, NULL, sizeof(buf), buf );
    FUNC12(ret == 1, "DOWNLOADHEADER failed\n");
    FUNC12(FUNC14(buf, "deadbeef") != 0, "DOWNLOADHEADER failed\n");

    FUNC15(buf + 2, "\n% ===> after DOWNLOADHEADER <===\n");
    *(WORD *)buf = FUNC16(buf + 2);
    ret = FUNC4(hdc, POSTSCRIPT_PASSTHROUGH, 0, buf, NULL);
    FUNC12(ret == *(WORD *)buf, "POSTSCRIPT_PASSTHROUGH failed: %d\n", ret);

    ret = FUNC3(hdc);
    FUNC12(ret == 1, "EndDoc failed\n");

    hfile = FUNC1(file_name, GENERIC_READ, 0, NULL, OPEN_EXISTING, 0, 0);
    FUNC12(hfile != INVALID_HANDLE_VALUE, "CreateFile failed\n");
    FUNC11(buf, 0, sizeof(buf));
    ret = FUNC8(hfile, buf, sizeof(buf), &ret, NULL);
    FUNC12(ret, "ReadFile failed\n");
    FUNC0(hfile);

    /* skip the HP PCL language selector */
    buf[sizeof(buf) - 1] = 0;
    p = buf;
    while (*p)
    {
        if (!(p[0] == 0x1b && p[1] == '%') && FUNC10(p, "@PJL", 4) != 0)
            break;

        p = FUNC13(p, '\n');
        if (!p) break;

        while (*p == '\r' || *p == '\n') p++;
    }
    FUNC12(p && !FUNC10(p, psadobe, sizeof(psadobe)), "wrong signature: %.14s\n", p ? p : buf);

    FUNC2(file_name);
}