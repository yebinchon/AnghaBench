
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int int32_t ;
typedef int Messenger ;


 int PACKET_ID_STATUSMESSAGE ;
 int write_cryptpacket_id (int const*,int ,int ,int const*,int ,int ) ;

__attribute__((used)) static int send_statusmessage(const Messenger *m, int32_t friendnumber, const uint8_t *status, uint16_t length)
{
    return write_cryptpacket_id(m, friendnumber, PACKET_ID_STATUSMESSAGE, status, length, 0);
}
