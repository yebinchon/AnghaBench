
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int version; int not_supported; scalar_t__ check_success; } ;
struct TYPE_4__ {int http_version; int effective_host; int use_fileserver_port; int testing_host; int checking; } ;
typedef TYPE_1__ HttpServerState ;
typedef TYPE_2__ HttpProtocolVersion ;


 int CURRENT_SYNC_PROTO_VERSION ;
 int FALSE ;
 int MIN (int ,int ) ;
 int TRUE ;
 int http_fileserver_url (int ) ;
 int seaf_message (char*,int ,int ,int ,int ) ;

__attribute__((used)) static void
check_http_fileserver_protocol_done (HttpProtocolVersion *result, void *user_data)
{
    HttpServerState *state = user_data;

    state->checking = FALSE;

    if (result->check_success && !result->not_supported) {
        state->http_version = MIN(result->version, CURRENT_SYNC_PROTO_VERSION);
        state->effective_host = http_fileserver_url(state->testing_host);
        state->use_fileserver_port = TRUE;
        seaf_message ("File syncing protocol version on server %s is %d. "
                      "Client file syncing protocol version is %d. Use version %d.\n",
                      state->effective_host, result->version, CURRENT_SYNC_PROTO_VERSION,
                      state->http_version);
    }
}
