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
struct packet {int size; scalar_t__ data; int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {int TotalSize; scalar_t__ Header; } ;
typedef  scalar_t__ PUCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_1__ IP_PACKET ;
typedef  int /*<<< orphan*/  IP_INTERFACE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3() {
    const struct packet Packets[] = {
	{ 0 }
    };
    int i;
    IP_INTERFACE IF;
    IP_PACKET IPPacket;
    NTSTATUS Status = STATUS_SUCCESS;

    /* Init interface */

    /* Init packet */

    for( i = 0; FUNC1(Status) && i < Packets[i].size; i++ ) {
	IPPacket.Header = (PUCHAR)Packets[i].data;
	IPPacket.TotalSize = Packets[i].size;
	FUNC0( &IF, &IPPacket );
    }
    FUNC2(STATUS_SUCCESS, Status);
}