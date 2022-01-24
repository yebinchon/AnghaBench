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
typedef  int ULONG ;
struct TYPE_4__ {int packet_size; int packet_header_chksum; scalar_t__ packet_chksum; } ;
struct TYPE_5__ {int /*<<< orphan*/  data; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  SERIAL_PACKET_HEADER ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  TYPE_2__* PSERIAL_PACKET ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ assemble_packet ; 

PSERIAL_PACKET FUNC2(PUCHAR pData,ULONG ulSize)
{
    PSERIAL_PACKET p;
    ULONG ulCheckSum;

    p = (PSERIAL_PACKET)assemble_packet;

    // fill in header
    p->header.packet_chksum = FUNC0(pData,ulSize);
    p->header.packet_size = ulSize;
    p->header.packet_header_chksum = 0;
    ulCheckSum = (ULONG)FUNC0((PUCHAR)p,sizeof(SERIAL_PACKET_HEADER));
    p->header.packet_header_chksum = ulCheckSum;
    // attach data to packet
    FUNC1(p->data,pData,ulSize);

    return p;
}