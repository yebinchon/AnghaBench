
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
 int journal_remote_handle_raw_source (int *,int ,int ,int ) ;
 int journal_remote_server_global ;

__attribute__((used)) static int dispatch_blocking_source_event(sd_event_source *event,
                                          void *userdata) {
        RemoteSource *source = userdata;

        return journal_remote_handle_raw_source(event, source->importer.fd, EPOLLIN, journal_remote_server_global);
}
