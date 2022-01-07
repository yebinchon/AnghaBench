
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int packet ;
typedef int int32_t ;
typedef int Messenger ;


 unsigned int MAX_CRYPTO_DATA_SIZE ;
 int PACKET_ID_FILE_CONTROL ;
 int memcpy (int *,int *,int ) ;
 int write_cryptpacket_id (int const*,int ,int ,int *,int,int ) ;

int send_file_control_packet(const Messenger *m, int32_t friendnumber, uint8_t send_receive, uint8_t filenumber,
                             uint8_t control_type, uint8_t *data, uint16_t data_length)
{
    if ((unsigned int)(1 + 3 + data_length) > MAX_CRYPTO_DATA_SIZE)
        return -1;

    uint8_t packet[3 + data_length];

    packet[0] = send_receive;
    packet[1] = filenumber;
    packet[2] = control_type;

    if (data_length) {
        memcpy(packet + 3, data, data_length);
    }

    return write_cryptpacket_id(m, friendnumber, PACKET_ID_FILE_CONTROL, packet, sizeof(packet), 0);
}
