
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_event_source ;
struct TYPE_3__ {int fd; } ;
struct TYPE_4__ {TYPE_1__ importer; } ;
typedef TYPE_2__ RemoteSource ;


 int EPOLLIN ;
 int SD_EVENT_OFF ;
 int journal_remote_handle_raw_source (int *,int ,int ,int ) ;
 int journal_remote_server_global ;
 int sd_event_source_ref (int *) ;
 int sd_event_source_set_enabled (int *,int ) ;
 int sd_event_source_unref (int *) ;

__attribute__((used)) static int dispatch_raw_source_until_block(sd_event_source *event,
                                           void *userdata) {
        RemoteSource *source = userdata;
        int r;


        sd_event_source_ref(event);

        r = journal_remote_handle_raw_source(event, source->importer.fd, EPOLLIN, journal_remote_server_global);
        if (r != 1)

                sd_event_source_set_enabled(event, SD_EVENT_OFF);

        sd_event_source_unref(event);

        return r;
}
