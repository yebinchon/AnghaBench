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
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  REG_BINARY ; 
 int /*<<< orphan*/  REG_DWORD ; 
 int /*<<< orphan*/  REG_EXPAND_SZ ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  hkey_main ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ sTestpath1 ; 
 scalar_t__ sTestpath2 ; 
 int FUNC3 (scalar_t__) ; 

__attribute__((used)) static void FUNC4(void)
{
    static const DWORD qw[2] = { 0x12345678, 0x87654321 };

    FUNC1("LONGSYSTEMVAR", "bar");
    FUNC1("FOO", "ImARatherLongButIndeedNeededString");

    FUNC2(!FUNC0(hkey_main,"TP1_EXP_SZ",0,REG_EXPAND_SZ, (const BYTE *)sTestpath1, FUNC3(sTestpath1)+1), 
        "RegSetValueExA failed\n");
    FUNC2(!FUNC0(hkey_main,"TP1_SZ",0,REG_SZ, (const BYTE *)sTestpath1, FUNC3(sTestpath1)+1), 
        "RegSetValueExA failed\n");
    FUNC2(!FUNC0(hkey_main,"TP1_ZB_SZ",0,REG_SZ, (const BYTE *)"", 0),
       "RegSetValueExA failed\n");
    FUNC2(!FUNC0(hkey_main,"TP2_EXP_SZ",0,REG_EXPAND_SZ, (const BYTE *)sTestpath2, FUNC3(sTestpath2)+1), 
        "RegSetValueExA failed\n");
    FUNC2(!FUNC0(hkey_main,"DWORD",0,REG_DWORD, (const BYTE *)qw, 4),
        "RegSetValueExA failed\n");
    FUNC2(!FUNC0(hkey_main,"BIN32",0,REG_BINARY, (const BYTE *)qw, 4),
        "RegSetValueExA failed\n");
    FUNC2(!FUNC0(hkey_main,"BIN64",0,REG_BINARY, (const BYTE *)qw, 8),
        "RegSetValueExA failed\n");
}