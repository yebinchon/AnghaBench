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
 int /*<<< orphan*/  FUNC0 (char const*,int,char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,int) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static WCHAR *FUNC4( const WCHAR *scheme, const char *data, UINT data_len )
{
    WCHAR *ret;
    UINT len, scheme_len = FUNC3( scheme );

    /* scheme + space + base64 encoded data (3/2/1 bytes data -> 4 bytes of characters) */
    len = scheme_len + 1 + ((data_len + 2) * 4) / 3;
    if (!(ret = FUNC1( (len + 1) * sizeof(WCHAR) ))) return NULL;
    FUNC2( ret, scheme, scheme_len * sizeof(WCHAR) );
    ret[scheme_len] = ' ';
    FUNC0( data, data_len, ret + scheme_len + 1 );
    return ret;
}