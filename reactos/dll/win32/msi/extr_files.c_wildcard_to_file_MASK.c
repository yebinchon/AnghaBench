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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int LPWSTR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int,char) ; 

__attribute__((used)) static LPWSTR FUNC5(LPWSTR wildcard, LPWSTR filename)
{
    LPWSTR path, ptr;
    DWORD dirlen, pathlen;

    ptr = FUNC4(wildcard, '\\');
    dirlen = ptr - wildcard + 1;

    pathlen = dirlen + FUNC2(filename) + 1;
    path = FUNC3(pathlen * sizeof(WCHAR));

    FUNC1(path, wildcard, dirlen + 1);
    FUNC0(path, filename);

    return path;
}