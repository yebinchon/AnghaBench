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
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/  const) ; 

__attribute__((used)) static WCHAR *FUNC2( const BYTE *addr, DWORD len )
{
    static const WCHAR fmtW[] =
        {'%','0','2','x',':','%','0','2','x',':','%','0','2','x',':',
         '%','0','2','x',':','%','0','2','x',':','%','0','2','x',0};
    WCHAR *ret;

    if (len != 6 || !(ret = FUNC0( 18 * sizeof(WCHAR) ))) return NULL;
    FUNC1( ret, fmtW, addr[0], addr[1], addr[2], addr[3], addr[4], addr[5] );
    return ret;
}