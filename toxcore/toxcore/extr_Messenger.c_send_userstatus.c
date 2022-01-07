
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int status ;
typedef int int32_t ;
typedef int Messenger ;


 int PACKET_ID_USERSTATUS ;
 int write_cryptpacket_id (int const*,int ,int ,int *,int,int ) ;

__attribute__((used)) static int send_userstatus(const Messenger *m, int32_t friendnumber, uint8_t status)
{
    return write_cryptpacket_id(m, friendnumber, PACKET_ID_USERSTATUS, &status, sizeof(status), 0);
}
