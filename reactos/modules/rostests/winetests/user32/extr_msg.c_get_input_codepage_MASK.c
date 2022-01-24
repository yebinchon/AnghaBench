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
typedef  int /*<<< orphan*/  cp ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HKL ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int LOCALE_IDEFAULTANSICODEPAGE ; 
 int LOCALE_RETURN_NUMBER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static DWORD FUNC3( void )
{
    DWORD cp;
    int ret;
    HKL hkl = FUNC0( 0 );

    ret = FUNC1( FUNC2(hkl), LOCALE_IDEFAULTANSICODEPAGE | LOCALE_RETURN_NUMBER,
                          (WCHAR *)&cp, sizeof(cp) / sizeof(WCHAR) );
    if (!ret) cp = CP_ACP;
    return cp;
}