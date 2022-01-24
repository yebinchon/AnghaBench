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
struct sql_str {char* data; int len; } ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
typedef  scalar_t__* LPWSTR ;
typedef  char* LPCWSTR ;

/* Variables and functions */
 int ERROR_FUNCTION_FAILED ; 
 int ERROR_OUTOFMEMORY ; 
 int ERROR_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,char*,int) ; 
 scalar_t__* FUNC1 (void*,int) ; 

UINT FUNC2( void *info, const struct sql_str *strdata, LPWSTR *str )
{
    LPCWSTR p = strdata->data;
    UINT len = strdata->len;

    /* match quotes */
    if( ( (p[0]=='`') && (p[len-1]!='`') ) ||
        ( (p[0]=='\'') && (p[len-1]!='\'') ) )
        return ERROR_FUNCTION_FAILED;

    /* if there are quotes, remove them */
    if( ( (p[0]=='`') && (p[len-1]=='`') ) ||
        ( (p[0]=='\'') && (p[len-1]=='\'') ) )
    {
        p++;
        len -= 2;
    }
    *str = FUNC1( info, (len + 1)*sizeof(WCHAR) );
    if( !*str )
        return ERROR_OUTOFMEMORY;
    FUNC0( *str, p, len*sizeof(WCHAR) );
    (*str)[len]=0;

    return ERROR_SUCCESS;
}