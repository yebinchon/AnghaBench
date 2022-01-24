#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_2__ {int dwFileVersionMS; int dwFileVersionLS; } ;
typedef  TYPE_1__ VS_FIXEDFILEINFO ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,char const*,void**,int*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int,int,int,int) ; 

__attribute__((used)) static WCHAR *FUNC7( const WCHAR *filename )
{
    static const WCHAR slashW[] = {'\\',0}, fmtW[] = {'%','u','.','%','u','.','%','u','.','%','u',0};
    VS_FIXEDFILEINFO *info;
    DWORD size;
    void *block;
    WCHAR *ret;

    if (!(ret = FUNC4( (4 * 5 + FUNC0( fmtW )) * sizeof(WCHAR) ))) return NULL;
    if (!(size = FUNC1( filename, NULL )) || !(block = FUNC4( size )))
    {
        FUNC5( ret );
        return NULL;
    }
    if (!FUNC2( filename, 0, size, block ) ||
        !FUNC3( block, slashW, (void **)&info, &size ))
    {
        FUNC5( block );
        FUNC5( ret );
        return NULL;
    }
    FUNC6( ret, fmtW, info->dwFileVersionMS >> 16, info->dwFileVersionMS & 0xffff,
                         info->dwFileVersionLS >> 16, info->dwFileVersionLS & 0xffff );
    FUNC5( block );
    return ret;
}