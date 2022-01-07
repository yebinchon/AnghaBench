
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* qwords; } ;
typedef TYPE_1__ sd_id128_t ;
struct TYPE_6__ {int perturb; } ;
typedef TYPE_2__ sd_event ;


 int USEC_INFINITY ;
 int USEC_PER_MINUTE ;
 scalar_t__ _likely_ (int) ;
 scalar_t__ sd_id128_get_boot (TYPE_1__*) ;

__attribute__((used)) static void initialize_perturb(sd_event *e) {
        sd_id128_t bootid = {};
        if (_likely_(e->perturb != USEC_INFINITY))
                return;

        if (sd_id128_get_boot(&bootid) >= 0)
                e->perturb = (bootid.qwords[0] ^ bootid.qwords[1]) % USEC_PER_MINUTE;
}
