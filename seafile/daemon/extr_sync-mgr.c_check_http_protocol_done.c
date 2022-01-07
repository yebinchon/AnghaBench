
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int http_tx_mgr; } ;
struct TYPE_7__ {int version; int not_supported; scalar_t__ check_success; } ;
struct TYPE_6__ {void* checking; int testing_host; int http_version; int effective_host; } ;
typedef TYPE_1__ HttpServerState ;
typedef TYPE_2__ HttpProtocolVersion ;


 int CURRENT_SYNC_PROTO_VERSION ;
 void* FALSE ;
 int MIN (int ,int ) ;
 int TRUE ;
 int check_http_fileserver_protocol_done ;
 int g_free (char*) ;
 int g_strdup (int ) ;
 char* http_fileserver_url (int ) ;
 scalar_t__ http_tx_manager_check_protocol_version (int ,char*,int ,int ,TYPE_1__*) ;
 TYPE_3__* seaf ;
 int seaf_message (char*,int ,int ,int ,int ) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static void
check_http_protocol_done (HttpProtocolVersion *result, void *user_data)
{
    HttpServerState *state = user_data;

    if (result->check_success && !result->not_supported) {
        state->http_version = MIN(result->version, CURRENT_SYNC_PROTO_VERSION);
        state->effective_host = g_strdup(state->testing_host);
        state->checking = FALSE;
        seaf_message ("File syncing protocol version on server %s is %d. "
                      "Client file syncing protocol version is %d. Use version %d.\n",
                      state->effective_host, result->version, CURRENT_SYNC_PROTO_VERSION,
                      state->http_version);
    } else if (strncmp(state->testing_host, "https", 5) != 0) {
        char *host_fileserver = http_fileserver_url(state->testing_host);
        if (http_tx_manager_check_protocol_version (seaf->http_tx_mgr,
                                                    host_fileserver,
                                                    TRUE,
                                                    check_http_fileserver_protocol_done,
                                                    state) < 0)
            state->checking = FALSE;
        g_free (host_fileserver);
    } else {
        state->checking = FALSE;
    }
}
