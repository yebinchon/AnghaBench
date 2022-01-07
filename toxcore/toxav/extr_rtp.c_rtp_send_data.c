
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct RTPHeader {int ve; int pt; void* cpart; void* tlen; void* ssrc; void* timestamp; void* sequnum; scalar_t__ ma; scalar_t__ cc; scalar_t__ xe; scalar_t__ pe; } ;
typedef int rdata ;
struct TYPE_3__ {int payload_type; scalar_t__ sequnum; int friend_number; int m; int ssrc; } ;
typedef TYPE_1__ RTPSession ;


 int LOGGER_WARNING (char*,...) ;
 scalar_t__ MAX_CRYPTO_DATA_SIZE ;
 int current_time_monotonic () ;
 int errno ;
 void* htonl (int ) ;
 void* htons (scalar_t__) ;
 int memcpy (int*,int const*,scalar_t__) ;
 int memset (int*,int ,int) ;
 int send_custom_lossy_packet (int ,int ,int*,scalar_t__) ;
 int strerror (int ) ;

int rtp_send_data (RTPSession *session, const uint8_t *data, uint16_t length)
{
    if (!session) {
        LOGGER_WARNING("No session!");
        return -1;
    }

    uint8_t rdata[length + sizeof(struct RTPHeader) + 1];
    memset(rdata, 0, sizeof(rdata));

    rdata[0] = session->payload_type;

    struct RTPHeader *header = (struct RTPHeader *)(rdata + 1);

    header->ve = 2;
    header->pe = 0;
    header->xe = 0;
    header->cc = 0;

    header->ma = 0;
    header->pt = session->payload_type % 128;

    header->sequnum = htons(session->sequnum);
    header->timestamp = htonl(current_time_monotonic());
    header->ssrc = htonl(session->ssrc);

    header->cpart = 0;
    header->tlen = htons(length);

    if (MAX_CRYPTO_DATA_SIZE > length + sizeof(struct RTPHeader) + 1) {






        memcpy(rdata + 1 + sizeof(struct RTPHeader), data, length);

        if (-1 == send_custom_lossy_packet(session->m, session->friend_number, rdata, sizeof(rdata)))
            LOGGER_WARNING("RTP send failed (len: %d)! std error: %s", sizeof(rdata), strerror(errno));
    } else {






        uint16_t sent = 0;
        uint16_t piece = MAX_CRYPTO_DATA_SIZE - (sizeof(struct RTPHeader) + 1);

        while ((length - sent) + sizeof(struct RTPHeader) + 1 > MAX_CRYPTO_DATA_SIZE) {
            memcpy(rdata + 1 + sizeof(struct RTPHeader), data + sent, piece);

            if (-1 == send_custom_lossy_packet(session->m, session->friend_number,
                                               rdata, piece + sizeof(struct RTPHeader) + 1))
                LOGGER_WARNING("RTP send failed (len: %d)! std error: %s",
                               piece + sizeof(struct RTPHeader) + 1, strerror(errno));

            sent += piece;
            header->cpart = htons(sent);
        }


        piece = length - sent;

        if (piece) {
            memcpy(rdata + 1 + sizeof(struct RTPHeader), data + sent, piece);

            if (-1 == send_custom_lossy_packet(session->m, session->friend_number, rdata,
                                               piece + sizeof(struct RTPHeader) + 1))
                LOGGER_WARNING("RTP send failed (len: %d)! std error: %s",
                               piece + sizeof(struct RTPHeader) + 1, strerror(errno));
        }
    }

    session->sequnum ++;
    return 0;
}
