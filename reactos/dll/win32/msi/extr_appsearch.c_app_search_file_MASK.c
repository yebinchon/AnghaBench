#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ dwFileVersionMS; scalar_t__ dwFileVersionLS; } ;
typedef  TYPE_1__ VS_FIXEDFILEINFO ;
struct TYPE_5__ {scalar_t__ MinVersionLS; scalar_t__ MinVersionMS; scalar_t__ MaxVersionLS; scalar_t__ MaxVersionMS; int /*<<< orphan*/  File; } ;
typedef  TYPE_2__ MSISIGNATURE ;
typedef  int /*<<< orphan*/ * LPWSTR ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int DWORD ;

/* Variables and functions */
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int INVALID_FILE_ATTRIBUTES ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  szBackSlash ; 

__attribute__((used)) static LPWSTR FUNC9(LPWSTR path, MSISIGNATURE *sig)
{
    VS_FIXEDFILEINFO *info;
    DWORD attr, handle, size;
    LPWSTR val = NULL;
    LPBYTE buffer;

    if (!sig->File)
    {
        FUNC4(path);
        FUNC3(path);

        attr = FUNC0(path);
        if (attr != INVALID_FILE_ATTRIBUTES &&
            (attr & FILE_ATTRIBUTE_DIRECTORY))
            return FUNC8(path);

        return NULL;
    }

    attr = FUNC0(path);
    if (attr == INVALID_FILE_ATTRIBUTES ||
        (attr & FILE_ATTRIBUTE_DIRECTORY))
        return NULL;

    size = FUNC1(path, &handle);
    if (!size)
        return FUNC8(path);

    buffer = FUNC6(size);
    if (!buffer)
        return NULL;

    if (!FUNC2(path, 0, size, buffer))
        goto done;

    if (!FUNC5(buffer, szBackSlash, (LPVOID)&info, &size) || !info)
        goto done;

    if (sig->MinVersionLS || sig->MinVersionMS)
    {
        if (info->dwFileVersionMS < sig->MinVersionMS)
            goto done;

        if (info->dwFileVersionMS == sig->MinVersionMS &&
            info->dwFileVersionLS < sig->MinVersionLS)
            goto done;
    }

    if (sig->MaxVersionLS || sig->MaxVersionMS)
    {
        if (info->dwFileVersionMS > sig->MaxVersionMS)
            goto done;

        if (info->dwFileVersionMS == sig->MaxVersionMS &&
            info->dwFileVersionLS > sig->MaxVersionLS)
            goto done;
    }

    val = FUNC8(path);

done:
    FUNC7(buffer);
    return val;
}