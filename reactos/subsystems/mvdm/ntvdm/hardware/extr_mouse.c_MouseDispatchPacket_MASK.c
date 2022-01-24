#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_3__ {int /*<<< orphan*/  Extra; int /*<<< orphan*/  VertCounter; int /*<<< orphan*/  HorzCounter; int /*<<< orphan*/  Flags; } ;
typedef  TYPE_1__* PMOUSE_PACKET ;

/* Variables and functions */
 int MouseId ; 
 int /*<<< orphan*/  MousePS2Port ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static VOID FUNC1(PMOUSE_PACKET Packet)
{
    FUNC0(MousePS2Port, Packet->Flags);
    FUNC0(MousePS2Port, Packet->HorzCounter);
    FUNC0(MousePS2Port, Packet->VertCounter);
    if (MouseId >= 3) FUNC0(MousePS2Port, Packet->Extra);
}