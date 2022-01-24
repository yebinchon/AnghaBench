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
typedef  size_t UINT ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int FUNC1 (char const*) ; 

__attribute__((used)) static WCHAR *FUNC2( const WCHAR *filename )
{
    UINT i;
    WCHAR *ret;

    if (!(ret = FUNC0( (FUNC1( filename ) + 1) * sizeof(WCHAR) )))
        return NULL;

    for (i = 0; filename[i]; i++)
    {
        if (filename[i] == '\\' || filename[i] == '/') ret[i] = '|';
        else ret[i] = filename[i];
    }
    ret[i] = 0;
    return ret;
}