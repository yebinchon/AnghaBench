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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_5__ {scalar_t__ MinVersionMS; scalar_t__ MinVersionLS; scalar_t__ MaxVersionMS; scalar_t__ MaxVersionLS; int /*<<< orphan*/  Languages; } ;
typedef  TYPE_2__ MSISIGNATURE ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int /*<<< orphan*/  ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 int /*<<< orphan*/  szBackSlash ; 

__attribute__((used)) static UINT FUNC10(const MSISIGNATURE *sig, LPCWSTR filePath,
 BOOL *matches)
{
    UINT len;
    void *version;
    VS_FIXEDFILEINFO *info = NULL;
    DWORD zero, size = FUNC0( filePath, &zero );

    *matches = FALSE;

    if (!size) return ERROR_SUCCESS;
    if (!(version = FUNC8( size ))) return ERROR_OUTOFMEMORY;

    if (FUNC1( filePath, 0, size, version ))
        FUNC5( version, szBackSlash, (void **)&info, &len );

    if (info)
    {
        FUNC4("comparing file version %d.%d.%d.%d:\n",
              FUNC2(info->dwFileVersionMS),
              FUNC3(info->dwFileVersionMS),
              FUNC2(info->dwFileVersionLS),
              FUNC3(info->dwFileVersionLS));
        if (info->dwFileVersionMS < sig->MinVersionMS
            || (info->dwFileVersionMS == sig->MinVersionMS &&
                info->dwFileVersionLS < sig->MinVersionLS))
        {
            FUNC4("less than minimum version %d.%d.%d.%d\n",
                   FUNC2(sig->MinVersionMS),
                   FUNC3(sig->MinVersionMS),
                   FUNC2(sig->MinVersionLS),
                   FUNC3(sig->MinVersionLS));
        }
        else if ((sig->MaxVersionMS || sig->MaxVersionLS) &&
                 (info->dwFileVersionMS > sig->MaxVersionMS ||
                  (info->dwFileVersionMS == sig->MaxVersionMS &&
                   info->dwFileVersionLS > sig->MaxVersionLS)))
        {
            FUNC4("greater than maximum version %d.%d.%d.%d\n",
                   FUNC2(sig->MaxVersionMS),
                   FUNC3(sig->MaxVersionMS),
                   FUNC2(sig->MaxVersionLS),
                   FUNC3(sig->MaxVersionLS));
        }
        else if (!FUNC7( version, sig->Languages ))
        {
            FUNC4("languages %s not supported\n", FUNC6( sig->Languages ));
        }
        else *matches = TRUE;
    }
    FUNC9( version );
    return ERROR_SUCCESS;
}