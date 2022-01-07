
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int sd_event_source ;
struct TYPE_2__ {int buffer_event; int event; } ;
typedef TYPE_1__ RemoteSource ;


 int EPOLLIN ;
 int SD_EVENT_ON ;
 int assert (int ) ;
 int journal_remote_handle_raw_source (int *,int,int ,int ) ;
 int journal_remote_server_global ;
 int sd_event_source_set_enabled (int ,int ) ;

__attribute__((used)) static int dispatch_raw_source_event(sd_event_source *event,
                                     int fd,
                                     uint32_t revents,
                                     void *userdata) {
        RemoteSource *source = userdata;
        int r;

        assert(source->event);
        assert(source->buffer_event);

        r = journal_remote_handle_raw_source(event, fd, EPOLLIN, journal_remote_server_global);
        if (r == 1)


                sd_event_source_set_enabled(source->buffer_event, SD_EVENT_ON);

        return r;
}
