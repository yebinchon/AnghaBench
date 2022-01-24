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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  packet ;
struct TYPE_3__ {int /*<<< orphan*/  fr_c; int /*<<< orphan*/  net_crypto; } ;
typedef  TYPE_1__ Messenger ;

/* Variables and functions */
 int /*<<< orphan*/  PACKET_ID_OFFLINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(Messenger *m, int friendcon_id)
{
    uint8_t packet = PACKET_ID_OFFLINE;
    return FUNC1(m->net_crypto, FUNC0(m->fr_c, friendcon_id), &packet,
                             sizeof(packet), 0) != -1;
}