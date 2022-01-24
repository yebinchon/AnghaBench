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
typedef  int* LPWSTR ;
typedef  int* LPCWSTR ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int MAX_STREAM_NAME ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int FUNC2 (int*) ; 
 int* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int FUNC5 (int) ; 

LPWSTR FUNC6(BOOL bTable, LPCWSTR in)
{
    DWORD count = MAX_STREAM_NAME;
    DWORD ch, next;
    LPWSTR out, p;

    if( !bTable )
        count = FUNC2( in )+2;
    if (!(out = FUNC3( count*sizeof(WCHAR) ))) return NULL;
    p = out;

    if( bTable )
    {
         *p++ = 0x4840;
         count --;
    }
    while( count -- ) 
    {
        ch = *in++;
        if( !ch )
        {
            *p = ch;
            return out;
        }
        if( ( ch < 0x80 ) && ( FUNC5(ch) >= 0 ) )
        {
            ch = FUNC5(ch) + 0x4800;
            next = *in;
            if( next && (next<0x80) )
            {
                next = FUNC5(next);
                if( next != -1 )
                {
                     next += 0x3ffffc0;
                     ch += (next<<6);
                     in++;
                }
            }
        }
        *p++ = ch;
    }
    FUNC0("Failed to encode stream name (%s)\n",FUNC1(in));
    FUNC4( out );
    return NULL;
}