
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct packet {int size; scalar_t__ data; int member_0; } ;
struct TYPE_3__ {int TotalSize; scalar_t__ Header; } ;
typedef scalar_t__ PUCHAR ;
typedef int NTSTATUS ;
typedef TYPE_1__ IP_PACKET ;
typedef int IP_INTERFACE ;


 int IPReceive (int *,TYPE_1__*) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int _AssertEqualValue (int ,int ) ;

__attribute__((used)) static void RunTest() {
    const struct packet Packets[] = {
 { 0 }
    };
    int i;
    IP_INTERFACE IF;
    IP_PACKET IPPacket;
    NTSTATUS Status = STATUS_SUCCESS;





    for( i = 0; NT_SUCCESS(Status) && i < Packets[i].size; i++ ) {
 IPPacket.Header = (PUCHAR)Packets[i].data;
 IPPacket.TotalSize = Packets[i].size;
 IPReceive( &IF, &IPPacket );
    }
    _AssertEqualValue(STATUS_SUCCESS, Status);
}
