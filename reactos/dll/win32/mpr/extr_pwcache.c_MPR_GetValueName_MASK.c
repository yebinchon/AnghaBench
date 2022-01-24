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
typedef  int WORD ;
typedef  scalar_t__* LPSTR ;
typedef  int* LPCSTR ;
typedef  int DWORD ;
typedef  int BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,char*,int) ; 

__attribute__((used)) static LPSTR FUNC5( LPCSTR pbResource, WORD cbResource, BYTE nType )
{
    LPSTR name;
    DWORD  i;

    name = FUNC1( FUNC0(), 0, 6+cbResource*2 );
    if( !name ) return NULL;

    FUNC4( name, "X-%02X-", nType );
    for(i=0; i<cbResource; i++)
    {
        name[5+i*2]=FUNC3((pbResource[i]&0xf0)>>4);
        name[6+i*2]=FUNC3(pbResource[i]&0x0f);
    }
    name[5+i*2]=0;
    FUNC2( "Value is %s\n", name );
    return name;
}