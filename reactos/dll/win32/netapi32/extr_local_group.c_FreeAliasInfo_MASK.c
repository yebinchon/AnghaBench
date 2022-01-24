#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_7__ {TYPE_3__* Buffer; } ;
struct TYPE_6__ {TYPE_3__* Buffer; } ;
struct TYPE_8__ {TYPE_2__ AdminComment; TYPE_1__ Name; } ;
typedef  TYPE_3__* PALIAS_GENERAL_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 

__attribute__((used)) static
VOID
FUNC1(PALIAS_GENERAL_INFORMATION AliasInfo)
{
    if (AliasInfo->Name.Buffer != NULL)
        FUNC0(AliasInfo->Name.Buffer);

    if (AliasInfo->AdminComment.Buffer != NULL)
        FUNC0(AliasInfo->AdminComment.Buffer);

    FUNC0(AliasInfo);
}