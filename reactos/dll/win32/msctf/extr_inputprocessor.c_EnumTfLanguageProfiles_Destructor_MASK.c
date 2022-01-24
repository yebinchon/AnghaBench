#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  catmgr; scalar_t__ langkey; scalar_t__ tipkey; } ;
typedef  TYPE_1__ EnumTfLanguageProfiles ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(EnumTfLanguageProfiles *This)
{
    FUNC4("destroying %p\n", This);
    FUNC3(This->tipkey);
    if (This->langkey)
        FUNC3(This->langkey);
    FUNC2(This->catmgr);
    FUNC1(FUNC0(),0,This);
}