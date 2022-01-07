
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int int32_t ;
typedef int Messenger ;


 scalar_t__ MAX_NAME_LENGTH ;
 int PACKET_ID_NICKNAME ;
 int write_cryptpacket_id (int const*,int ,int ,int const*,scalar_t__,int ) ;

__attribute__((used)) static int m_sendname(const Messenger *m, int32_t friendnumber, const uint8_t *name, uint16_t length)
{
    if (length > MAX_NAME_LENGTH)
        return 0;

    return write_cryptpacket_id(m, friendnumber, PACKET_ID_NICKNAME, name, length, 0);
}
