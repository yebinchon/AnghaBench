#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_51__   TYPE_6__ ;
typedef  struct TYPE_50__   TYPE_5__ ;
typedef  struct TYPE_49__   TYPE_4__ ;
typedef  struct TYPE_48__   TYPE_3__ ;
typedef  struct TYPE_47__   TYPE_2__ ;
typedef  struct TYPE_46__   TYPE_1__ ;
typedef  struct TYPE_45__   TYPE_14__ ;
typedef  struct TYPE_44__   TYPE_12__ ;

/* Type definitions */
typedef  char* sds ;
struct TYPE_48__ {char* ptr; } ;
typedef  TYPE_3__ robj ;
struct TYPE_46__ {char* ptr; } ;
struct TYPE_47__ {TYPE_1__ buffer; } ;
struct TYPE_49__ {TYPE_2__ io; } ;
typedef  TYPE_4__ rio ;
struct TYPE_50__ {long last_dbid; int /*<<< orphan*/  conn; } ;
typedef  TYPE_5__ migrateCachedSocket ;
struct TYPE_51__ {int argc; TYPE_3__** argv; int /*<<< orphan*/  db; } ;
typedef  TYPE_6__ client ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf1 ;
typedef  int /*<<< orphan*/  buf0 ;
struct TYPE_45__ {int /*<<< orphan*/  dirty; scalar_t__ cluster_enabled; } ;
struct TYPE_44__ {int /*<<< orphan*/  ok; int /*<<< orphan*/  syntaxerr; } ;

/* Variables and functions */
 scalar_t__ C_OK ; 
 scalar_t__ ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,int,long) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,size_t,long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_3__*,TYPE_3__*) ; 
 TYPE_3__* FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ errno ; 
 long long FUNC9 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC10 (TYPE_6__*,TYPE_3__*,long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,TYPE_3__*) ; 
 TYPE_5__* FUNC14 (TYPE_6__*,TYPE_3__*,TYPE_3__*,long) ; 
 long long FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,int,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,char,int) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*,long long) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 size_t FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 TYPE_14__ server ; 
 int /*<<< orphan*/  FUNC27 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_12__ shared ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC29 (char*,char*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__**) ; 
 TYPE_3__** FUNC31 (int) ; 
 TYPE_3__** FUNC32 (TYPE_3__**,int) ; 

void FUNC33(client *c) {
    migrateCachedSocket *cs;
    int copy = 0, replace = 0, j;
    char *password = NULL;
    long timeout;
    long dbid;
    robj **ov = NULL; /* Objects to migrate. */
    robj **kv = NULL; /* Key names. */
    robj **newargv = NULL; /* Used to rewrite the command as DEL ... keys ... */
    rio cmd, payload;
    int may_retry = 1;
    int write_error = 0;
    int argv_rewritten = 0;

    /* To support the KEYS option we need the following additional state. */
    int first_key = 3; /* Argument index of the first key. */
    int num_keys = 1;  /* By default only migrate the 'key' argument. */

    /* Parse additional options */
    for (j = 6; j < c->argc; j++) {
        int moreargs = j < c->argc-1;
        if (!FUNC29(c->argv[j]->ptr,"copy")) {
            copy = 1;
        } else if (!FUNC29(c->argv[j]->ptr,"replace")) {
            replace = 1;
        } else if (!FUNC29(c->argv[j]->ptr,"auth")) {
            if (!moreargs) {
                FUNC0(c,shared.syntaxerr);
                return;
            }
            j++;
            password = c->argv[j]->ptr;
        } else if (!FUNC29(c->argv[j]->ptr,"keys")) {
            if (FUNC25(c->argv[3]->ptr) != 0) {
                FUNC1(c,
                    "When using MIGRATE KEYS option, the key argument"
                    " must be set to the empty string");
                return;
            }
            first_key = j+1;
            num_keys = c->argc - j - 1;
            break; /* All the remaining args are keys. */
        } else {
            FUNC0(c,shared.syntaxerr);
            return;
        }
    }

    /* Sanity check */
    if (FUNC10(c,c->argv[5],&timeout,NULL) != C_OK ||
        FUNC10(c,c->argv[4],&dbid,NULL) != C_OK)
    {
        return;
    }
    if (timeout <= 0) timeout = 1000;

    /* Check if the keys are here. If at least one key is to migrate, do it
     * otherwise if all the keys are missing reply with "NOKEY" to signal
     * the caller there was nothing to migrate. We don't return an error in
     * this case, since often this is due to a normal condition like the key
     * expiring in the meantime. */
    ov = FUNC32(ov,sizeof(robj*)*num_keys);
    kv = FUNC32(kv,sizeof(robj*)*num_keys);
    int oi = 0;

    for (j = 0; j < num_keys; j++) {
        if ((ov[oi] = FUNC12(c->db,c->argv[first_key+j])) != NULL) {
            kv[oi] = c->argv[first_key+j];
            oi++;
        }
    }
    num_keys = oi;
    if (num_keys == 0) {
        FUNC30(ov); FUNC30(kv);
        FUNC3(c,FUNC26("+NOKEY\r\n"));
        return;
    }

try_again:
    write_error = 0;

    /* Connect */
    cs = FUNC14(c,c->argv[1],c->argv[2],timeout);
    if (cs == NULL) {
        FUNC30(ov); FUNC30(kv);
        return; /* error sent to the client by migrateGetSocket() */
    }

    FUNC17(&cmd,FUNC23());

    /* Authentication */
    if (password) {
        FUNC27(c,NULL,FUNC18(&cmd,'*',2));
        FUNC27(c,NULL,FUNC20(&cmd,"AUTH",4));
        FUNC27(c,NULL,FUNC20(&cmd,password,
            FUNC25(password)));
    }

    /* Send the SELECT command if the current DB is not already selected. */
    int select = cs->last_dbid != dbid; /* Should we emit SELECT? */
    if (select) {
        FUNC27(c,NULL,FUNC18(&cmd,'*',2));
        FUNC27(c,NULL,FUNC20(&cmd,"SELECT",6));
        FUNC27(c,NULL,FUNC19(&cmd,dbid));
    }

    int non_expired = 0; /* Number of keys that we'll find non expired.
                            Note that serializing large keys may take some time
                            so certain keys that were found non expired by the
                            lookupKey() function, may be expired later. */

    /* Create RESTORE payload and generate the protocol to call the command. */
    for (j = 0; j < num_keys; j++) {
        long long ttl = 0;
        long long expireat = FUNC9(c->db,kv[j]);

        if (expireat != -1) {
            ttl = expireat-FUNC15();
            if (ttl < 0) {
                continue;
            }
            if (ttl < 1) ttl = 1;
        }

        /* Relocate valid (non expired) keys into the array in successive
         * positions to remove holes created by the keys that were present
         * in the first lookup but are now expired after the second lookup. */
        kv[non_expired++] = kv[j];

        FUNC27(c,NULL,
            FUNC18(&cmd,'*',replace ? 5 : 4));

        if (server.cluster_enabled)
            FUNC27(c,NULL,
                FUNC20(&cmd,"RESTORE-ASKING",14));
        else
            FUNC27(c,NULL,FUNC20(&cmd,"RESTORE",7));
        FUNC27(c,NULL,FUNC21(kv[j]));
        FUNC27(c,NULL,FUNC20(&cmd,kv[j]->ptr,
                FUNC25(kv[j]->ptr)));
        FUNC27(c,NULL,FUNC19(&cmd,ttl));

        /* Emit the payload argument, that is the serialized object using
         * the DUMP format. */
        FUNC6(&payload,ov[j],kv[j]);
        FUNC27(c,NULL,
            FUNC20(&cmd,payload.io.buffer.ptr,
                               FUNC25(payload.io.buffer.ptr)));
        FUNC24(payload.io.buffer.ptr);

        /* Add the REPLACE option to the RESTORE command if it was specified
         * as a MIGRATE option. */
        if (replace)
            FUNC27(c,NULL,FUNC20(&cmd,"REPLACE",7));
    }

    /* Fix the actual number of keys we are migrating. */
    num_keys = non_expired;

    /* Transfer the query to the other node in 64K chunks. */
    errno = 0;
    {
        sds buf = cmd.io.buffer.ptr;
        size_t pos = 0, towrite;
        int nwritten = 0;

        while ((towrite = FUNC25(buf)-pos) > 0) {
            towrite = (towrite > (64*1024) ? (64*1024) : towrite);
            nwritten = FUNC5(cs->conn,buf+pos,towrite,timeout);
            if (nwritten != (signed)towrite) {
                write_error = 1;
                goto socket_err;
            }
            pos += nwritten;
        }
    }

    char buf0[1024]; /* Auth reply. */
    char buf1[1024]; /* Select reply. */
    char buf2[1024]; /* Restore reply. */

    /* Read the AUTH reply if needed. */
    if (password && FUNC4(cs->conn, buf0, sizeof(buf0), timeout) <= 0)
        goto socket_err;

    /* Read the SELECT reply if needed. */
    if (select && FUNC4(cs->conn, buf1, sizeof(buf1), timeout) <= 0)
        goto socket_err;

    /* Read the RESTORE replies. */
    int error_from_target = 0;
    int socket_error = 0;
    int del_idx = 1; /* Index of the key argument for the replicated DEL op. */

    /* Allocate the new argument vector that will replace the current command,
     * to propagate the MIGRATE as a DEL command (if no COPY option was given).
     * We allocate num_keys+1 because the additional argument is for "DEL"
     * command name itself. */
    if (!copy) newargv = FUNC31(sizeof(robj*)*(num_keys+1));

    for (j = 0; j < num_keys; j++) {
        if (FUNC4(cs->conn, buf2, sizeof(buf2), timeout) <= 0) {
            socket_error = 1;
            break;
        }
        if ((password && buf0[0] == '-') ||
            (select && buf1[0] == '-') ||
            buf2[0] == '-')
        {
            /* On error assume that last_dbid is no longer valid. */
            if (!error_from_target) {
                cs->last_dbid = -1;
                char *errbuf;
                if (password && buf0[0] == '-') errbuf = buf0;
                else if (select && buf1[0] == '-') errbuf = buf1;
                else errbuf = buf2;

                error_from_target = 1;
                FUNC2(c,"Target instance replied with error: %s",
                    errbuf+1);
            }
        } else {
            if (!copy) {
                /* No COPY option: remove the local key, signal the change. */
                FUNC8(c->db,kv[j]);
                FUNC28(c->db,kv[j]);
                server.dirty++;

                /* Populate the argument vector to replace the old one. */
                newargv[del_idx++] = kv[j];
                FUNC11(kv[j]);
            }
        }
    }

    /* On socket error, if we want to retry, do it now before rewriting the
     * command vector. We only retry if we are sure nothing was processed
     * and we failed to read the first reply (j == 0 test). */
    if (!error_from_target && socket_error && j == 0 && may_retry &&
        errno != ETIMEDOUT)
    {
        goto socket_err; /* A retry is guaranteed because of tested conditions.*/
    }

    /* On socket errors, close the migration socket now that we still have
     * the original host/port in the ARGV. Later the original command may be
     * rewritten to DEL and will be too later. */
    if (socket_error) FUNC13(c->argv[1],c->argv[2]);

    if (!copy) {
        /* Translate MIGRATE as DEL for replication/AOF. Note that we do
         * this only for the keys for which we received an acknowledgement
         * from the receiving Redis server, by using the del_idx index. */
        if (del_idx > 1) {
            newargv[0] = FUNC7("DEL",3);
            /* Note that the following call takes ownership of newargv. */
            FUNC16(c,del_idx,newargv);
            argv_rewritten = 1;
        } else {
            /* No key transfer acknowledged, no need to rewrite as DEL. */
            FUNC30(newargv);
        }
        newargv = NULL; /* Make it safe to call zfree() on it in the future. */
    }

    /* If we are here and a socket error happened, we don't want to retry.
     * Just signal the problem to the client, but only do it if we did not
     * already queue a different error reported by the destination server. */
    if (!error_from_target && socket_error) {
        may_retry = 0;
        goto socket_err;
    }

    if (!error_from_target) {
        /* Success! Update the last_dbid in migrateCachedSocket, so that we can
         * avoid SELECT the next time if the target DB is the same. Reply +OK.
         *
         * Note: If we reached this point, even if socket_error is true
         * still the SELECT command succeeded (otherwise the code jumps to
         * socket_err label. */
        cs->last_dbid = dbid;
        FUNC0(c,shared.ok);
    } else {
        /* On error we already sent it in the for loop above, and set
         * the currently selected socket to -1 to force SELECT the next time. */
    }

    FUNC24(cmd.io.buffer.ptr);
    FUNC30(ov); FUNC30(kv); FUNC30(newargv);
    return;

/* On socket errors we try to close the cached socket and try again.
 * It is very common for the cached socket to get closed, if just reopening
 * it works it's a shame to notify the error to the caller. */
socket_err:
    /* Cleanup we want to perform in both the retry and no retry case.
     * Note: Closing the migrate socket will also force SELECT next time. */
    FUNC24(cmd.io.buffer.ptr);

    /* If the command was rewritten as DEL and there was a socket error,
     * we already closed the socket earlier. While migrateCloseSocket()
     * is idempotent, the host/port arguments are now gone, so don't do it
     * again. */
    if (!argv_rewritten) FUNC13(c->argv[1],c->argv[2]);
    FUNC30(newargv);
    newargv = NULL; /* This will get reallocated on retry. */

    /* Retry only if it's not a timeout and we never attempted a retry
     * (or the code jumping here did not set may_retry to zero). */
    if (errno != ETIMEDOUT && may_retry) {
        may_retry = 0;
        goto try_again;
    }

    /* Cleanup we want to do if no retry is attempted. */
    FUNC30(ov); FUNC30(kv);
    FUNC3(c,
        FUNC22(FUNC23(),
            "-IOERR error or timeout %s to target instance\r\n",
            write_error ? "writing" : "reading"));
    return;
}