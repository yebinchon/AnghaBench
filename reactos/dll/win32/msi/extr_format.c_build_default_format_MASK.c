#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  MSIRECORD ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,int) ; 
 scalar_t__ FUNC4 (char*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static WCHAR *FUNC6( const MSIRECORD *record )
{
    static const WCHAR fmt[] = {'%','i',':',' ','[','%','i',']',' ',0};
    int i, count = FUNC0( record );
    WCHAR *ret, *tmp, buf[26];
    DWORD size = 1;

    if (!(ret = FUNC1( sizeof(*ret) ))) return NULL;
    ret[0] = 0;

    for (i = 1; i <= count; i++)
    {
        size += FUNC4( buf, fmt, i, i );
        if (!(tmp = FUNC3( ret, size * sizeof(*ret) )))
        {
            FUNC2( ret );
            return NULL;
        }
        ret = tmp;
        FUNC5( ret, buf );
    }
    return ret;
}