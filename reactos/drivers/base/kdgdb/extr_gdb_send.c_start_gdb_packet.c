
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KdpSendByte (char) ;
 scalar_t__ currentChecksum ;

void
start_gdb_packet(void)
{

    KdpSendByte('$');
    currentChecksum = 0;
}
