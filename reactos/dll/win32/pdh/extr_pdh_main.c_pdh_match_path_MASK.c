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
typedef  char* LPCWSTR ;
typedef  int BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static BOOL FUNC4( LPCWSTR fullpath, LPCWSTR path )
{
    const WCHAR *p;

    if (path[0] == '\\' && path[1] == '\\' && (p = FUNC1( path + 2, '\\' )) &&
        FUNC0( path + 2, p - path - 2 ))
    {
        path += p - path;
    }
    if (FUNC1( path, '\\' )) p = fullpath;
    else p = FUNC3( fullpath, '\\' ) + 1;
    return !FUNC2( p, path );
}