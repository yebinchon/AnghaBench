
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sd_event_source ;
struct TYPE_4__ {scalar_t__ uploading; } ;
typedef TYPE_1__ Uploader ;


 int assert (TYPE_1__*) ;
 int check_journal_input (TYPE_1__*) ;
 int log_debug (char*) ;

__attribute__((used)) static int dispatch_journal_input(sd_event_source *event,
                                  int fd,
                                  uint32_t revents,
                                  void *userp) {
        Uploader *u = userp;

        assert(u);

        if (u->uploading)
                return 0;

        log_debug("Detected journal input, checking for new data.");
        return check_journal_input(u);
}
