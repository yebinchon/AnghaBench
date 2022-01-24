#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  connection ;
struct TYPE_6__ {char* replpreamble; int repldbfd; scalar_t__ repldboff; scalar_t__ repldbsize; int /*<<< orphan*/  conn; } ;
typedef  TYPE_1__ client ;
struct TYPE_7__ {int stat_net_output_bytes; } ;

/* Variables and functions */
 scalar_t__ CONN_STATE_CONNECTED ; 
 int /*<<< orphan*/  LL_VERBOSE ; 
 int /*<<< orphan*/  LL_WARNING ; 
 int PROTO_IOBUF_LEN ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,int) ; 
 TYPE_2__ server ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC14 (int /*<<< orphan*/ ) ; 

void FUNC15(connection *conn) {
    client *slave = FUNC2(conn);
    char buf[PROTO_IOBUF_LEN];
    ssize_t nwritten, buflen;

    /* Before sending the RDB file, we send the preamble as configured by the
     * replication process. Currently the preamble is just the bulk count of
     * the file in the form "$<length>\r\n". */
    if (slave->replpreamble) {
        nwritten = FUNC5(conn,slave->replpreamble,FUNC11(slave->replpreamble));
        if (nwritten == -1) {
            FUNC13(LL_VERBOSE,"Write error sending RDB preamble to replica: %s",
                FUNC1(conn));
            FUNC6(slave);
            return;
        }
        server.stat_net_output_bytes += nwritten;
        FUNC12(slave->replpreamble,nwritten,-1);
        if (FUNC11(slave->replpreamble) == 0) {
            FUNC10(slave->replpreamble);
            slave->replpreamble = NULL;
            /* fall through sending data. */
        } else {
            return;
        }
    }

    /* If the preamble was already transferred, send the RDB bulk data. */
    FUNC7(slave->repldbfd,slave->repldboff,SEEK_SET);
    buflen = FUNC9(slave->repldbfd,buf,PROTO_IOBUF_LEN);
    if (buflen <= 0) {
        FUNC13(LL_WARNING,"Read error sending DB to replica: %s",
            (buflen == 0) ? "premature EOF" : FUNC14(errno));
        FUNC6(slave);
        return;
    }
    if ((nwritten = FUNC5(conn,buf,buflen)) == -1) {
        if (FUNC3(conn) != CONN_STATE_CONNECTED) {
            FUNC13(LL_WARNING,"Write error sending DB to replica: %s",
                FUNC1(conn));
            FUNC6(slave);
        }
        return;
    }
    slave->repldboff += nwritten;
    server.stat_net_output_bytes += nwritten;
    if (slave->repldboff == slave->repldbsize) {
        FUNC0(slave->repldbfd);
        slave->repldbfd = -1;
        FUNC4(slave->conn,NULL);
        FUNC8(slave);
    }
}