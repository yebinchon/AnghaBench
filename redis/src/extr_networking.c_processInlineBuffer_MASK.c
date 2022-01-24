#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  char* sds ;
typedef  int /*<<< orphan*/  robj ;
struct TYPE_6__ {char* querybuf; int qb_pos; int flags; char** argv; size_t argc; int /*<<< orphan*/  repl_ack_time; } ;
typedef  TYPE_1__ client ;
struct TYPE_7__ {int /*<<< orphan*/  unixtime; } ;

/* Variables and functions */
 int CLIENT_SLAVE ; 
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 scalar_t__ PROTO_INLINE_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (char*,size_t) ; 
 char** FUNC5 (char*,int*) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_1__*) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char**) ; 
 char** FUNC9 (int) ; 

int FUNC10(client *c) {
    char *newline;
    int argc, j, linefeed_chars = 1;
    sds *argv, aux;
    size_t querylen;

    /* Search for end of line */
    newline = FUNC7(c->querybuf+c->qb_pos,'\n');

    /* Nothing to do without a \r\n */
    if (newline == NULL) {
        if (FUNC3(c->querybuf)-c->qb_pos > PROTO_INLINE_MAX_SIZE) {
            FUNC0(c,"Protocol error: too big inline request");
            FUNC6("too big inline request",c);
        }
        return C_ERR;
    }

    /* Handle the \r\n case. */
    if (newline && newline != c->querybuf+c->qb_pos && *(newline-1) == '\r')
        newline--, linefeed_chars++;

    /* Split the input buffer up to the \r\n */
    querylen = newline-(c->querybuf+c->qb_pos);
    aux = FUNC4(c->querybuf+c->qb_pos,querylen);
    argv = FUNC5(aux,&argc);
    FUNC2(aux);
    if (argv == NULL) {
        FUNC0(c,"Protocol error: unbalanced quotes in request");
        FUNC6("unbalanced quotes in inline request",c);
        return C_ERR;
    }

    /* Newline from slaves can be used to refresh the last ACK time.
     * This is useful for a slave to ping back while loading a big
     * RDB file. */
    if (querylen == 0 && c->flags & CLIENT_SLAVE)
        c->repl_ack_time = server.unixtime;

    /* Move querybuffer position to the next query in the buffer. */
    c->qb_pos += querylen+linefeed_chars;

    /* Setup argv array on client structure */
    if (argc) {
        if (c->argv) FUNC8(c->argv);
        c->argv = FUNC9(sizeof(robj*)*argc);
    }

    /* Create redis objects for all arguments. */
    for (c->argc = 0, j = 0; j < argc; j++) {
        if (FUNC3(argv[j])) {
            c->argv[c->argc] = FUNC1(OBJ_STRING,argv[j]);
            c->argc++;
        } else {
            FUNC2(argv[j]);
        }
    }
    FUNC8(argv);
    return C_OK;
}