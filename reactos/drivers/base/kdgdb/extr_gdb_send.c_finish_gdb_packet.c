
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char UCHAR ;
typedef scalar_t__ KDSTATUS ;


 int KD_DEBUGGER_NOT_PRESENT ;
 scalar_t__ KdPacketNeedsResend ;
 scalar_t__ KdPacketReceived ;
 scalar_t__ KdpReceiveByte (char*) ;
 int KdpSendByte (char) ;
 int TRUE ;
 int currentChecksum ;
 char* hex_chars ;

KDSTATUS
finish_gdb_packet(void)
{
    UCHAR ack;
    KDSTATUS Status;


    KdpSendByte('#');
    KdpSendByte(hex_chars[(currentChecksum >> 4) & 0xf]);
    KdpSendByte(hex_chars[currentChecksum & 0xf]);


    Status = KdpReceiveByte(&ack);

    if (Status != KdPacketReceived)
    {
        KD_DEBUGGER_NOT_PRESENT = TRUE;
        return Status;
    }

    if (ack != '+')
        return KdPacketNeedsResend;

    return KdPacketReceived;
}
