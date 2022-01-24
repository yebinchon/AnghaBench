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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_3__ {int /*<<< orphan*/ * volume_label; } ;
typedef  TYPE_1__ MSIMEDIAINFO ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int BOOL ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL FUNC9(MSIMEDIAINFO *mi, LPCWSTR source_root)
{
    WCHAR volume_name[MAX_PATH + 1], root[MAX_PATH + 1];
    const WCHAR *p;
    int len, len2;

    FUNC7(root, source_root);
    FUNC3(root);
    FUNC2(root);

    if (!FUNC1(root, volume_name, MAX_PATH + 1, NULL, NULL, NULL, NULL, 0))
    {
        FUNC4("failed to get volume information for %s (%u)\n", FUNC5(root), FUNC0());
        return FALSE;
    }

    len = FUNC8( volume_name );
    len2 = FUNC8( mi->volume_label );
    if (len2 > len) return FALSE;
    p = volume_name + len - len2;

    return !FUNC6( mi->volume_label, p );
}