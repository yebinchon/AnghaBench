
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int typing ;
typedef int int32_t ;
typedef int Messenger ;


 int PACKET_ID_TYPING ;
 int write_cryptpacket_id (int const*,int ,int ,int *,int,int ) ;

__attribute__((used)) static int send_user_istyping(const Messenger *m, int32_t friendnumber, uint8_t is_typing)
{
    uint8_t typing = is_typing;
    return write_cryptpacket_id(m, friendnumber, PACKET_ID_TYPING, &typing, sizeof(typing), 0);
}
