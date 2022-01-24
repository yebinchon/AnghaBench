#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int WORD ;
typedef  int WCHAR ;
struct TYPE_4__ {int eScript; } ;
struct TYPE_5__ {TYPE_1__ a; } ;
typedef  TYPE_2__ SCRIPT_ITEM ;
typedef  int HRESULT ;

/* Variables and functions */
 int SCRIPT_UNDEFINED ; 
 int S_OK ; 
 int FUNC0 (int*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

__attribute__((used)) static void FUNC3(void)
{
    HRESULT hr;
    WCHAR surrogate[2];
    WORD Script_Surrogates;
    SCRIPT_ITEM items[2];
    int num;

    /* Find Script_Surrogates */
    surrogate[0] = 0xd800;
    hr = FUNC0( surrogate, 1, 2, NULL, NULL, items, &num );
    FUNC2( hr == S_OK, "got %08x\n", hr );
    FUNC2( num == 1, "got %d\n", num );
    FUNC2( items[0].a.eScript != SCRIPT_UNDEFINED, "got script %x\n", items[0].a.eScript );
    Script_Surrogates = items[0].a.eScript;

    /* Show that an invalid character has script Script_Surrogates */
    FUNC1( 0x01ffff, surrogate );
    hr = FUNC0( surrogate, 2, 2, NULL, NULL, items, &num );
    FUNC2( hr == S_OK, "got %08x\n", hr );
    FUNC2( num == 1, "got %d\n", num );
    FUNC2( items[0].a.eScript == Script_Surrogates, "got script %x\n", items[0].a.eScript );
}