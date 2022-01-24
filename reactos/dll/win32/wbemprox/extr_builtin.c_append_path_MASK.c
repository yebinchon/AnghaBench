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
 int FUNC2 (char const*) ; 

__attribute__((used)) static WCHAR *FUNC3( const WCHAR *path, const WCHAR *segment, UINT *len )
{
    UINT len_path = 0, len_segment = FUNC2( segment );
    WCHAR *ret;

    *len = 0;
    if (path) len_path = FUNC2( path );
    if (!(ret = FUNC0( (len_path + len_segment + 2) * sizeof(WCHAR) ))) return NULL;
    if (path && len_path)
    {
        FUNC1( ret, path, len_path * sizeof(WCHAR) );
        ret[len_path] = '\\';
        *len += len_path + 1;
    }
    FUNC1( ret + *len, segment, len_segment * sizeof(WCHAR) );
    *len += len_segment;
    ret[*len] = 0;
    return ret;
}