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
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  HINTERNET ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 scalar_t__ HTTP_QUERY_PROXY_AUTHENTICATE ; 
 scalar_t__ HTTP_QUERY_WWW_AUTHENTICATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,char*,scalar_t__*,scalar_t__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static BOOL FUNC8( HINTERNET hRequest, LPWSTR szBuf, DWORD sz, BOOL proxy )
{
    LPWSTR p, q;
    DWORD index, query;
    static const WCHAR szRealm[] = { 'r','e','a','l','m','=',0 };

    if (proxy)
        query = HTTP_QUERY_PROXY_AUTHENTICATE;
    else
        query = HTTP_QUERY_WWW_AUTHENTICATE;

    /* extract the Realm from the response and show it */
    index = 0;
    if( !FUNC1( hRequest, query, szBuf, &sz, &index) )
        return FALSE;

    /*
     * FIXME: maybe we should check that we're
     * dealing with 'Basic' Authentication
     */
    p = FUNC3( szBuf, ' ' );
    if( !p || FUNC6( p+1, szRealm, FUNC5(szRealm) ) )
    {
        FUNC0("response wrong? (%s)\n", FUNC2(szBuf));
        return FALSE;
    }

    /* remove quotes */
    p += 7;
    if( *p == '"' )
    {
        p++;
        q = FUNC7( p, '"' );
        if( q )
            *q = 0;
    }
    FUNC4( szBuf, p );

    return TRUE;
}