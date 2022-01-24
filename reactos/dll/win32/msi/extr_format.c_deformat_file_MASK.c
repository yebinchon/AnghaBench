#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_11__ {int /*<<< orphan*/  package; } ;
struct TYPE_10__ {int len; } ;
struct TYPE_9__ {int /*<<< orphan*/  TargetPath; } ;
typedef  TYPE_1__ MSIFILE ;
typedef  TYPE_2__ FORMSTR ;
typedef  TYPE_3__ FORMAT ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static WCHAR *FUNC8( FORMAT *format, FORMSTR *str, BOOL shortname, int *ret_len )
{
    WCHAR *key, *ret = NULL;
    const MSIFILE *file;
    DWORD len = 0;

    if (!(key = FUNC3( (str->len + 1) * sizeof(WCHAR) ))) return NULL;
    FUNC2(key, FUNC1(format, str), str->len + 1);

    if (!(file = FUNC5( format->package, key ))) goto done;
    if (!shortname)
    {
        if ((ret = FUNC6( file->TargetPath ))) len = FUNC7( ret );
        goto done;
    }
    if ((len = FUNC0(file->TargetPath, NULL, 0)) <= 0)
    {
        if ((ret = FUNC6( file->TargetPath ))) len = FUNC7( ret );
        goto done;
    }
    len++;
    if ((ret = FUNC3( len * sizeof(WCHAR) )))
        len = FUNC0( file->TargetPath, ret, len );

done:
    FUNC4( key );
    *ret_len = len;
    return ret;
}