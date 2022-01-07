
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct RTPHeader {int pt; int cpart; int tlen; int timestamp; int sequnum; } ;
struct TYPE_10__ {int sequnum; scalar_t__ timestamp; int tlen; } ;
struct TYPE_12__ {int len; scalar_t__ data; TYPE_1__ header; } ;
struct TYPE_11__ {int payload_type; int rsequnum; int (* mcb ) (int ,TYPE_3__*) ;TYPE_3__* mp; int bwc; scalar_t__ rtimestamp; int cs; } ;
typedef TYPE_2__ RTPSession ;
typedef int Messenger ;


 int LOGGER_WARNING (char*) ;
 int MAX_CRYPTO_DATA_SIZE ;
 int bwc_add_lost (int ,int) ;
 int bwc_add_recv (int ,int) ;
 int bwc_feed_avg (int ,int) ;
 scalar_t__ chloss (TYPE_2__*,struct RTPHeader const*) ;
 int free (TYPE_3__*) ;
 int memcpy (scalar_t__,int const*,int) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 TYPE_3__* new_message (int,int const*,int) ;
 scalar_t__ ntohl (int ) ;
 int ntohs (int ) ;
 int stub1 (int ,TYPE_3__*) ;
 int stub2 (int ,TYPE_3__*) ;
 int stub3 (int ,TYPE_3__*) ;
 int stub4 (int ,TYPE_3__*) ;

int handle_rtp_packet (Messenger *m, uint32_t friendnumber, const uint8_t *data, uint16_t length, void *object)
{
    (void) m;
    (void) friendnumber;

    RTPSession *session = object;

    data ++;
    length--;

    if (!session || length < sizeof (struct RTPHeader)) {
        LOGGER_WARNING("No session or invalid length of received buffer!");
        return -1;
    }

    const struct RTPHeader *header = (struct RTPHeader *) data;

    if (header->pt != session->payload_type % 128) {
        LOGGER_WARNING("Invalid payload type with the session");
        return -1;
    }

    if (ntohs(header->cpart) >= ntohs(header->tlen)) {

        return -1;
    }

    bwc_feed_avg(session->bwc, length);

    if (ntohs(header->tlen) == length - sizeof (struct RTPHeader)) {





        if (chloss(session, header)) {
            return 0;
        } else {

            session->rsequnum = ntohs(header->sequnum);
            session->rtimestamp = ntohl(header->timestamp);
        }

        bwc_add_recv(session->bwc, length);


        if (session->mp) {
            if (session->mcb)
                session->mcb (session->cs, session->mp);
            else
                free(session->mp);

            session->mp = ((void*)0);
        }





        if (!session->mcb)
            return 0;

        return session->mcb (session->cs, new_message(length, data, length));
    } else {


        if (session->mp) {
            if (session->mp->header.sequnum == ntohs(header->sequnum) &&
                    session->mp->header.timestamp == ntohl(header->timestamp)) {



                if (session->mp->header.tlen - session->mp->len < length - sizeof(struct RTPHeader) ||
                        session->mp->header.tlen <= ntohs(header->cpart)) {



                    return 0;
                }

                memcpy(session->mp->data + ntohs(header->cpart), data + sizeof(struct RTPHeader),
                       length - sizeof(struct RTPHeader));

                session->mp->len += length - sizeof(struct RTPHeader);

                bwc_add_recv(session->bwc, length);

                if (session->mp->len == session->mp->header.tlen) {



                    if (session->mcb)
                        session->mcb (session->cs, session->mp);
                    else
                        free(session->mp);

                    session->mp = ((void*)0);
                }
            } else {


                if (session->mp->header.timestamp > ntohl(header->timestamp))



                    return 0;


                bwc_add_lost(session->bwc,
                             (session->mp->header.tlen - session->mp->len) +


                             ((session->mp->header.tlen - session->mp->len) /
                              MAX_CRYPTO_DATA_SIZE) * sizeof(struct RTPHeader) );


                if (session->mcb)
                    session->mcb (session->cs, session->mp);
                else
                    free(session->mp);

                session->mp = ((void*)0);
                goto NEW_MULTIPARTED;
            }
        } else {




NEW_MULTIPARTED:




            if (chloss(session, header)) {
                return 0;
            } else {

                session->rsequnum = ntohs(header->sequnum);
                session->rtimestamp = ntohl(header->timestamp);
            }

            bwc_add_recv(session->bwc, length);



            if (session->mcb) {
                session->mp = new_message(ntohs(header->tlen) + sizeof(struct RTPHeader), data, length);


                if (ntohs(header->cpart));

                memmove(session->mp->data + ntohs(header->cpart), session->mp->data, session->mp->len);
            }
        }
    }

    return 0;
}
