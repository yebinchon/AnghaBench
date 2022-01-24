#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  void* gboolean ;
struct TYPE_8__ {int cdc_average_block_size; int /*<<< orphan*/  sync_mgr; int /*<<< orphan*/  clone_mgr; int /*<<< orphan*/  repo_mgr; int /*<<< orphan*/  filelock_mgr; int /*<<< orphan*/  branch_mgr; int /*<<< orphan*/  fs_mgr; int /*<<< orphan*/  commit_mgr; int /*<<< orphan*/  mq_mgr; void* disable_block_hash; void* http_proxy_password; void* http_proxy_username; void* http_proxy_port; void* http_proxy_addr; void* http_proxy_type; void* use_http_proxy; void* disable_verify_certificate; int /*<<< orphan*/  enable_http_sync; void* sync_extra_temp_file; void* client_name; void* client_id; int /*<<< orphan*/  ccnet_dir; } ;
typedef  TYPE_1__ SeafileSession ;

/* Variables and functions */
 int /*<<< orphan*/  KEY_CDC_AVERAGE_BLOCK_SIZE ; 
 int /*<<< orphan*/  KEY_CLIENT_ID ; 
 int /*<<< orphan*/  KEY_CLIENT_NAME ; 
 char* KEY_DISABLE_BLOCK_HASH ; 
 char* KEY_DISABLE_VERIFY_CERTIFICATE ; 
 int /*<<< orphan*/  KEY_PROXY_ADDR ; 
 int /*<<< orphan*/  KEY_PROXY_PASSWORD ; 
 int /*<<< orphan*/  KEY_PROXY_PORT ; 
 int /*<<< orphan*/  KEY_PROXY_TYPE ; 
 int /*<<< orphan*/  KEY_PROXY_USERNAME ; 
 char* KEY_SYNC_EXTRA_TEMP_FILE ; 
 char* KEY_USE_PROXY ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char*) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char**,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,void*,void*) ; 
 void* FUNC14 (TYPE_1__*,char*) ; 
 void* FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC16 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ ,void*) ; 

void
FUNC18 (SeafileSession *session)
{
    char *client_id = NULL, *client_name = NULL;

    /* load config */

    FUNC4 (session->ccnet_dir, &client_id, &client_name);

    session->client_id = FUNC16 (session, KEY_CLIENT_ID);
    if (!session->client_id) {
        if (client_id) {
            session->client_id = FUNC1 (client_id);
        } else {
            session->client_id = FUNC2();
        }
        FUNC17 (session,
                                           KEY_CLIENT_ID,
                                           session->client_id);
    }

    session->client_name = FUNC16 (session, KEY_CLIENT_NAME);
    if (!session->client_name) {
        if (client_name) {
            session->client_name = FUNC1 (client_name);
            FUNC17 (session,
                                               KEY_CLIENT_NAME,
                                               session->client_name);
        } else {
            session->client_name = FUNC1("unknown");
        }
    }

    FUNC13 ("client id = %s, client_name = %s\n", session->client_id, session->client_name);
    FUNC0 (client_id);
    FUNC0 (client_name);

    session->sync_extra_temp_file = FUNC14
        (session, KEY_SYNC_EXTRA_TEMP_FILE);

    /* Enable http sync by default. */
    session->enable_http_sync = TRUE;

    session->disable_verify_certificate = FUNC14
        (session, KEY_DISABLE_VERIFY_CERTIFICATE);

    session->use_http_proxy =
        FUNC14(session, KEY_USE_PROXY);

    gboolean use_system_proxy =
        FUNC14(session, "use_system_proxy");

    if (use_system_proxy) {
        FUNC3(session);
    } else {
        session->http_proxy_type =
            FUNC16(session, KEY_PROXY_TYPE);
        session->http_proxy_addr =
            FUNC16(session, KEY_PROXY_ADDR);
        session->http_proxy_port =
            FUNC15(session, KEY_PROXY_PORT, NULL);
        session->http_proxy_username =
            FUNC16(session, KEY_PROXY_USERNAME);
        session->http_proxy_password =
            FUNC16(session, KEY_PROXY_PASSWORD);
    }

    int block_size = FUNC15(session, KEY_CDC_AVERAGE_BLOCK_SIZE, NULL);
    if (block_size > 0)
        session->cdc_average_block_size = block_size;
    else
        session->cdc_average_block_size = 0;

    session->disable_block_hash =
        FUNC14 (session, KEY_DISABLE_BLOCK_HASH);
    
    /* Start mq manager earlier, so that we can send notifications
     * when start repo manager. */
    FUNC10 (session->mq_mgr);
    FUNC7 (session->commit_mgr);
    FUNC9 (session->fs_mgr);
    FUNC5 (session->branch_mgr);
    FUNC8 (session->filelock_mgr);
    FUNC11 (session->repo_mgr);
    FUNC6 (session->clone_mgr);
#ifndef SEAF_TOOL    
    FUNC12 (session->sync_mgr);
#endif
}