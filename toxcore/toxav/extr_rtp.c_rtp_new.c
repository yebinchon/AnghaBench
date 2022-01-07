
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int payload_type; int (* mcb ) (void*,struct RTPMessage*) ;void* cs; int * bwc; int friend_number; void* m; int ssrc; } ;
typedef TYPE_1__ RTPSession ;
typedef void Messenger ;
typedef int BWController ;


 int LOGGER_WARNING (char*) ;
 int assert (void*) ;
 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int random_int () ;
 int rtp_allow_receiving (TYPE_1__*) ;

RTPSession *rtp_new (int payload_type, Messenger *m, uint32_t friendnumber,
                     BWController *bwc, void *cs,
                     int (*mcb) (void *, struct RTPMessage *))
{
    assert(mcb);
    assert(cs);
    assert(m);

    RTPSession *retu = calloc(1, sizeof(RTPSession));

    if (!retu) {
        LOGGER_WARNING("Alloc failed! Program might misbehave!");
        return ((void*)0);
    }

    retu->ssrc = random_int();
    retu->payload_type = payload_type;

    retu->m = m;
    retu->friend_number = friendnumber;



    retu->bwc = bwc;
    retu->cs = cs;
    retu->mcb = mcb;

    if (-1 == rtp_allow_receiving(retu)) {
        LOGGER_WARNING("Failed to start rtp receiving mode");
        free(retu);
        return ((void*)0);
    }

    return retu;
}
