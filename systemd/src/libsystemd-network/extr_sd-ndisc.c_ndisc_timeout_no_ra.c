
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_6__ {int timeout_no_ra; } ;
typedef TYPE_1__ sd_ndisc ;
typedef TYPE_1__ sd_event_source ;


 int SD_NDISC_EVENT_TIMEOUT ;
 int assert (TYPE_1__*) ;
 int event_source_disable (int ) ;
 int log_ndisc (char*) ;
 int ndisc_callback (TYPE_1__*,int ,int *) ;

__attribute__((used)) static int ndisc_timeout_no_ra(sd_event_source *s, uint64_t usec, void *userdata) {
        sd_ndisc *nd = userdata;

        assert(s);
        assert(nd);

        log_ndisc("No RA received before link confirmation timeout");

        (void) event_source_disable(nd->timeout_no_ra);
        ndisc_callback(nd, SD_NDISC_EVENT_TIMEOUT, ((void*)0));

        return 0;
}
