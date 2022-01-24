#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
typedef  int /*<<< orphan*/  psync_offset ;
typedef  int /*<<< orphan*/  connection ;
struct TYPE_4__ {int master_initial_offset; char* master_replid; char* replid2; char* replid; int /*<<< orphan*/ * repl_backlog; TYPE_1__* cached_master; scalar_t__ master_repl_offset; scalar_t__ second_replid_offset; } ;
struct TYPE_3__ {char* replid; scalar_t__ reploff; } ;

/* Variables and functions */
 int CONFIG_RUN_ID_SIZE ; 
 int /*<<< orphan*/  LL_NOTICE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int PSYNC_CONTINUE ; 
 int PSYNC_FULLRESYNC ; 
 int PSYNC_NOT_SUPPORTED ; 
 int PSYNC_TRY_LATER ; 
 int PSYNC_WAIT_REPLY ; 
 int PSYNC_WRITE_ERROR ; 
 int /*<<< orphan*/  SYNC_CMD_READ ; 
 int /*<<< orphan*/  SYNC_CMD_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,scalar_t__) ; 
 char* FUNC12 (char*,char) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (char*,char*,int) ; 
 int FUNC15 (char*,int /*<<< orphan*/ *,int) ; 

int FUNC16(connection *conn, int read_reply) {
    char *psync_replid;
    char psync_offset[32];
    sds reply;

    /* Writing half */
    if (!read_reply) {
        /* Initially set master_initial_offset to -1 to mark the current
         * master run_id and offset as not valid. Later if we'll be able to do
         * a FULL resync using the PSYNC command we'll set the offset at the
         * right value, so that this information will be propagated to the
         * client structure representing the master into server.master. */
        server.master_initial_offset = -1;

        if (server.cached_master) {
            psync_replid = server.cached_master->replid;
            FUNC11(psync_offset,sizeof(psync_offset),"%lld", server.cached_master->reploff+1);
            FUNC10(LL_NOTICE,"Trying a partial resynchronization (request %s:%s).", psync_replid, psync_offset);
        } else {
            FUNC10(LL_NOTICE,"Partial resynchronization not possible (no cached master)");
            psync_replid = "?";
            FUNC3(psync_offset,"-1",3);
        }

        /* Issue the PSYNC command */
        reply = FUNC9(SYNC_CMD_WRITE,conn,"PSYNC",psync_replid,psync_offset,NULL);
        if (reply != NULL) {
            FUNC10(LL_WARNING,"Unable to send PSYNC to master: %s",reply);
            FUNC7(reply);
            FUNC0(conn, NULL);
            return PSYNC_WRITE_ERROR;
        }
        return PSYNC_WAIT_REPLY;
    }

    /* Reading half */
    reply = FUNC9(SYNC_CMD_READ,conn,NULL);
    if (FUNC8(reply) == 0) {
        /* The master may send empty newlines after it receives PSYNC
         * and before to reply, just to keep the connection alive. */
        FUNC7(reply);
        return PSYNC_WAIT_REPLY;
    }

    FUNC0(conn, NULL);

    if (!FUNC14(reply,"+FULLRESYNC",11)) {
        char *replid = NULL, *offset = NULL;

        /* FULL RESYNC, parse the reply in order to extract the run id
         * and the replication offset. */
        replid = FUNC12(reply,' ');
        if (replid) {
            replid++;
            offset = FUNC12(replid,' ');
            if (offset) offset++;
        }
        if (!replid || !offset || (offset-replid-1) != CONFIG_RUN_ID_SIZE) {
            FUNC10(LL_WARNING,
                "Master replied with wrong +FULLRESYNC syntax.");
            /* This is an unexpected condition, actually the +FULLRESYNC
             * reply means that the master supports PSYNC, but the reply
             * format seems wrong. To stay safe we blank the master
             * replid to make sure next PSYNCs will fail. */
            FUNC4(server.master_replid,0,CONFIG_RUN_ID_SIZE+1);
        } else {
            FUNC3(server.master_replid, replid, offset-replid-1);
            server.master_replid[CONFIG_RUN_ID_SIZE] = '\0';
            server.master_initial_offset = FUNC15(offset,NULL,10);
            FUNC10(LL_NOTICE,"Full resync from master: %s:%lld",
                server.master_replid,
                server.master_initial_offset);
        }
        /* We are going to full resync, discard the cached master structure. */
        FUNC5();
        FUNC7(reply);
        return PSYNC_FULLRESYNC;
    }

    if (!FUNC14(reply,"+CONTINUE",9)) {
        /* Partial resync was accepted. */
        FUNC10(LL_NOTICE,
            "Successful partial resynchronization with master.");

        /* Check the new replication ID advertised by the master. If it
         * changed, we need to set the new ID as primary ID, and set or
         * secondary ID as the old master ID up to the current offset, so
         * that our sub-slaves will be able to PSYNC with us after a
         * disconnection. */
        char *start = reply+10;
        char *end = reply+9;
        while(end[0] != '\r' && end[0] != '\n' && end[0] != '\0') end++;
        if (end-start == CONFIG_RUN_ID_SIZE) {
            char new[CONFIG_RUN_ID_SIZE+1];
            FUNC3(new,start,CONFIG_RUN_ID_SIZE);
            new[CONFIG_RUN_ID_SIZE] = '\0';

            if (FUNC13(new,server.cached_master->replid)) {
                /* Master ID changed. */
                FUNC10(LL_WARNING,"Master replication ID changed to %s",new);

                /* Set the old ID as our ID2, up to the current offset+1. */
                FUNC3(server.replid2,server.cached_master->replid,
                    sizeof(server.replid2));
                server.second_replid_offset = server.master_repl_offset+1;

                /* Update the cached master ID and our own primary ID to the
                 * new one. */
                FUNC3(server.replid,new,sizeof(server.replid));
                FUNC3(server.cached_master->replid,new,sizeof(server.replid));

                /* Disconnect all the sub-slaves: they need to be notified. */
                FUNC2();
            }
        }

        /* Setup the replication to continue. */
        FUNC7(reply);
        FUNC6(conn);

        /* If this instance was restarted and we read the metadata to
         * PSYNC from the persistence file, our replication backlog could
         * be still not initialized. Create it. */
        if (server.repl_backlog == NULL) FUNC1();
        return PSYNC_CONTINUE;
    }

    /* If we reach this point we received either an error (since the master does
     * not understand PSYNC or because it is in a special state and cannot
     * serve our request), or an unexpected reply from the master.
     *
     * Return PSYNC_NOT_SUPPORTED on errors we don't understand, otherwise
     * return PSYNC_TRY_LATER if we believe this is a transient error. */

    if (!FUNC14(reply,"-NOMASTERLINK",13) ||
        !FUNC14(reply,"-LOADING",8))
    {
        FUNC10(LL_NOTICE,
            "Master is currently unable to PSYNC "
            "but should be in the future: %s", reply);
        FUNC7(reply);
        return PSYNC_TRY_LATER;
    }

    if (FUNC14(reply,"-ERR",4)) {
        /* If it's not an error, log the unexpected event. */
        FUNC10(LL_WARNING,
            "Unexpected reply to PSYNC from master: %s", reply);
    } else {
        FUNC10(LL_NOTICE,
            "Master does not support PSYNC or is in "
            "error state (reply: %s)", reply);
    }
    FUNC7(reply);
    FUNC5();
    return PSYNC_NOT_SUPPORTED;
}