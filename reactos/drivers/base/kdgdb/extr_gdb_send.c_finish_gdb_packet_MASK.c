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
typedef  char UCHAR ;
typedef  scalar_t__ KDSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  KD_DEBUGGER_NOT_PRESENT ; 
 scalar_t__ KdPacketNeedsResend ; 
 scalar_t__ KdPacketReceived ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 int /*<<< orphan*/  TRUE ; 
 int currentChecksum ; 
 char* hex_chars ; 

KDSTATUS
FUNC2(void)
{
    UCHAR ack;
    KDSTATUS Status;

    /* Send finish byte and append checksum */
    FUNC1('#');
    FUNC1(hex_chars[(currentChecksum >> 4) & 0xf]);
    FUNC1(hex_chars[currentChecksum & 0xf]);

    /* Wait for acknowledgement */
    Status = FUNC0(&ack);

    if (Status != KdPacketReceived)
    {
        KD_DEBUGGER_NOT_PRESENT = TRUE;
        return Status;
    }

    if (ack != '+')
        return KdPacketNeedsResend;

    return KdPacketReceived;
}