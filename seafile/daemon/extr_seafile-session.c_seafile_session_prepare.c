
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef void* gboolean ;
struct TYPE_8__ {int cdc_average_block_size; int sync_mgr; int clone_mgr; int repo_mgr; int filelock_mgr; int branch_mgr; int fs_mgr; int commit_mgr; int mq_mgr; void* disable_block_hash; void* http_proxy_password; void* http_proxy_username; void* http_proxy_port; void* http_proxy_addr; void* http_proxy_type; void* use_http_proxy; void* disable_verify_certificate; int enable_http_sync; void* sync_extra_temp_file; void* client_name; void* client_id; int ccnet_dir; } ;
typedef TYPE_1__ SeafileSession ;


 int KEY_CDC_AVERAGE_BLOCK_SIZE ;
 int KEY_CLIENT_ID ;
 int KEY_CLIENT_NAME ;
 char* KEY_DISABLE_BLOCK_HASH ;
 char* KEY_DISABLE_VERIFY_CERTIFICATE ;
 int KEY_PROXY_ADDR ;
 int KEY_PROXY_PASSWORD ;
 int KEY_PROXY_PORT ;
 int KEY_PROXY_TYPE ;
 int KEY_PROXY_USERNAME ;
 char* KEY_SYNC_EXTRA_TEMP_FILE ;
 char* KEY_USE_PROXY ;
 int TRUE ;
 int g_free (char*) ;
 void* g_strdup (char*) ;
 void* generate_client_id () ;
 int load_system_proxy (TYPE_1__*) ;
 int read_ccnet_conf (int ,char**,char**) ;
 int seaf_branch_manager_init (int ) ;
 int seaf_clone_manager_init (int ) ;
 int seaf_commit_manager_init (int ) ;
 int seaf_filelock_manager_init (int ) ;
 int seaf_fs_manager_init (int ) ;
 int seaf_mq_manager_init (int ) ;
 int seaf_repo_manager_init (int ) ;
 int seaf_sync_manager_init (int ) ;
 int seaf_warning (char*,void*,void*) ;
 void* seafile_session_config_get_bool (TYPE_1__*,char*) ;
 void* seafile_session_config_get_int (TYPE_1__*,int ,int *) ;
 void* seafile_session_config_get_string (TYPE_1__*,int ) ;
 int seafile_session_config_set_string (TYPE_1__*,int ,void*) ;

void
seafile_session_prepare (SeafileSession *session)
{
    char *client_id = ((void*)0), *client_name = ((void*)0);



    read_ccnet_conf (session->ccnet_dir, &client_id, &client_name);

    session->client_id = seafile_session_config_get_string (session, KEY_CLIENT_ID);
    if (!session->client_id) {
        if (client_id) {
            session->client_id = g_strdup (client_id);
        } else {
            session->client_id = generate_client_id();
        }
        seafile_session_config_set_string (session,
                                           KEY_CLIENT_ID,
                                           session->client_id);
    }

    session->client_name = seafile_session_config_get_string (session, KEY_CLIENT_NAME);
    if (!session->client_name) {
        if (client_name) {
            session->client_name = g_strdup (client_name);
            seafile_session_config_set_string (session,
                                               KEY_CLIENT_NAME,
                                               session->client_name);
        } else {
            session->client_name = g_strdup("unknown");
        }
    }

    seaf_warning ("client id = %s, client_name = %s\n", session->client_id, session->client_name);
    g_free (client_id);
    g_free (client_name);

    session->sync_extra_temp_file = seafile_session_config_get_bool
        (session, KEY_SYNC_EXTRA_TEMP_FILE);


    session->enable_http_sync = TRUE;

    session->disable_verify_certificate = seafile_session_config_get_bool
        (session, KEY_DISABLE_VERIFY_CERTIFICATE);

    session->use_http_proxy =
        seafile_session_config_get_bool(session, KEY_USE_PROXY);

    gboolean use_system_proxy =
        seafile_session_config_get_bool(session, "use_system_proxy");

    if (use_system_proxy) {
        load_system_proxy(session);
    } else {
        session->http_proxy_type =
            seafile_session_config_get_string(session, KEY_PROXY_TYPE);
        session->http_proxy_addr =
            seafile_session_config_get_string(session, KEY_PROXY_ADDR);
        session->http_proxy_port =
            seafile_session_config_get_int(session, KEY_PROXY_PORT, ((void*)0));
        session->http_proxy_username =
            seafile_session_config_get_string(session, KEY_PROXY_USERNAME);
        session->http_proxy_password =
            seafile_session_config_get_string(session, KEY_PROXY_PASSWORD);
    }

    int block_size = seafile_session_config_get_int(session, KEY_CDC_AVERAGE_BLOCK_SIZE, ((void*)0));
    if (block_size > 0)
        session->cdc_average_block_size = block_size;
    else
        session->cdc_average_block_size = 0;

    session->disable_block_hash =
        seafile_session_config_get_bool (session, KEY_DISABLE_BLOCK_HASH);



    seaf_mq_manager_init (session->mq_mgr);
    seaf_commit_manager_init (session->commit_mgr);
    seaf_fs_manager_init (session->fs_mgr);
    seaf_branch_manager_init (session->branch_mgr);
    seaf_filelock_manager_init (session->filelock_mgr);
    seaf_repo_manager_init (session->repo_mgr);
    seaf_clone_manager_init (session->clone_mgr);

    seaf_sync_manager_init (session->sync_mgr);

}
