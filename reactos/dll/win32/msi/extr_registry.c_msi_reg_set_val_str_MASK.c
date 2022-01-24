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
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  LONG ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ szEmpty ; 

LONG FUNC2( HKEY hkey, LPCWSTR name, LPCWSTR value )
{
    DWORD len;
    if (!value) value = szEmpty;
    len = (FUNC1(value) + 1) * sizeof (WCHAR);
    return FUNC0( hkey, name, 0, REG_SZ, (const BYTE *)value, len );
}