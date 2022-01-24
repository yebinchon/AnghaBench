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
typedef  int UINT ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 

__attribute__((used)) static WCHAR *FUNC2( WCHAR drive, const WCHAR *path, UINT len )
{
    UINT i = 0;
    WCHAR *ret;

    if (!(ret = FUNC0( (len + 6) * sizeof(WCHAR) ))) return NULL;
    ret[i++] = drive;
    ret[i++] = ':';
    ret[i++] = '\\';
    if (path && len)
    {
        FUNC1( ret + i, path, len * sizeof(WCHAR) );
        i += len;
        ret[i++] = '\\';
    }
    ret[i++] = '*';
    ret[i] = 0;
    return ret;
}