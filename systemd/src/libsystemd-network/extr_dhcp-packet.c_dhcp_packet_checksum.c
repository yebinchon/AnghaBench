
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint16_t ;


 int memcpy (scalar_t__*,scalar_t__*,size_t) ;

uint16_t dhcp_packet_checksum(uint8_t *buf, size_t len) {
        uint64_t *buf_64 = (uint64_t*)buf;
        uint64_t *end_64 = buf_64 + (len / sizeof(uint64_t));
        uint64_t sum = 0;



        while (buf_64 < end_64) {
                sum += *buf_64;
                if (sum < *buf_64)

                        sum++;

                buf_64++;
        }

        if (len % sizeof(uint64_t)) {


                uint64_t buf_tail = 0;

                memcpy(&buf_tail, buf_64, len % sizeof(uint64_t));

                sum += buf_tail;
                if (sum < buf_tail)

                        sum++;
        }

        while (sum >> 16)
                sum = (sum & 0xffff) + (sum >> 16);

        return ~sum;
}
