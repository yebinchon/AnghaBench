#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ Signature; scalar_t__ Tag; } ;
struct TYPE_4__ {TYPE_3__ csw; } ;
typedef  TYPE_1__* PIRP_CONTEXT ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 scalar_t__ CSW_SIGNATURE ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  TRUE ; 

__attribute__((used)) static
BOOLEAN
FUNC2(
    PIRP_CONTEXT Context)
{
    if (Context->csw.Signature != CSW_SIGNATURE)
    {
        FUNC0("[USBSTOR] Expected Signature %x but got %x\n", CSW_SIGNATURE, Context->csw.Signature);
        return FALSE;
    }

    if (Context->csw.Tag != FUNC1(&Context->csw))
    {
        FUNC0("[USBSTOR] Expected Tag %Ix but got %x\n", FUNC1(&Context->csw), Context->csw.Tag);
        return FALSE;
    }

    return TRUE;
}