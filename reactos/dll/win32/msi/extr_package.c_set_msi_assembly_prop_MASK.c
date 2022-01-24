#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {int /*<<< orphan*/  wCodePage; int /*<<< orphan*/  wLanguage; } ;
struct TYPE_5__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ MSIPACKAGE ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  TYPE_2__ LANGANDCODEPAGE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(MSIPACKAGE *package)
{
    UINT val_len;
    DWORD size, handle;
    LPVOID version = NULL;
    WCHAR buf[MAX_PATH];
    LPWSTR fusion, verstr;
    LANGANDCODEPAGE *translate;

    static const WCHAR netasm[] = {
        'M','s','i','N','e','t','A','s','s','e','m','b','l','y','S','u','p','p','o','r','t',0
    };
    static const WCHAR translation[] = {
        '\\','V','a','r','F','i','l','e','I','n','f','o',
        '\\','T','r','a','n','s','l','a','t','i','o','n',0
    };
    static const WCHAR verfmt[] = {
        '\\','S','t','r','i','n','g','F','i','l','e','I','n','f','o',
        '\\','%','0','4','x','%','0','4','x',
        '\\','P','r','o','d','u','c','t','V','e','r','s','i','o','n',0
    };

    fusion = FUNC3(package);
    if (!fusion)
        return;

    size = FUNC0(fusion, &handle);
    if (!size)
        goto done;

    version = FUNC4(size);
    if (!version)
        goto done;

    if (!FUNC1(fusion, handle, size, version))
        goto done;

    if (!FUNC2(version, translation, (LPVOID *)&translate, &val_len))
        goto done;

    FUNC7(buf, verfmt, translate[0].wLanguage, translate[0].wCodePage);

    if (!FUNC2(version, buf, (LPVOID *)&verstr, &val_len))
        goto done;

    if (!val_len || !verstr)
        goto done;

    FUNC6( package->db, netasm, verstr, -1 );

done:
    FUNC5(fusion);
    FUNC5(version);
}