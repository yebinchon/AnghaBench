#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  robj ;
struct TYPE_8__ {long long multibulklen; scalar_t__ argc; char* querybuf; int qb_pos; int bulklen; int /*<<< orphan*/ * argv; } ;
typedef  TYPE_1__ client ;
struct TYPE_9__ {long long proto_max_bulk_len; } ;

/* Variables and functions */
 int C_ERR ; 
 int C_OK ; 
 int /*<<< orphan*/  OBJ_STRING ; 
 int PROTO_INLINE_MAX_SIZE ; 
 long long PROTO_MBULK_BIG_ARG ; 
 int /*<<< orphan*/  SDS_NOINIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 char* FUNC5 (char*,long long) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 size_t FUNC7 (char*) ; 
 char* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t,int) ; 
 TYPE_4__ server ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,TYPE_1__*) ; 
 char* FUNC12 (char*,char) ; 
 int FUNC13 (char*,int,long long*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int) ; 

int FUNC16(client *c) {
    char *newline = NULL;
    int ok;
    long long ll;

    if (c->multibulklen == 0) {
        /* The client should have been reset */
        FUNC10(c,NULL,c->argc == 0);

        /* Multi bulk length cannot be read without a \r\n */
        newline = FUNC12(c->querybuf+c->qb_pos,'\r');
        if (newline == NULL) {
            if (FUNC7(c->querybuf)-c->qb_pos > PROTO_INLINE_MAX_SIZE) {
                FUNC0(c,"Protocol error: too big mbulk count string");
                FUNC11("too big mbulk count string",c);
            }
            return C_ERR;
        }

        /* Buffer should also contain \n */
        if (newline-(c->querybuf+c->qb_pos) > (ssize_t)(FUNC7(c->querybuf)-c->qb_pos-2))
            return C_ERR;

        /* We know for sure there is a whole line since newline != NULL,
         * so go ahead and find out the multi bulk length. */
        FUNC10(c,NULL,c->querybuf[c->qb_pos] == '*');
        ok = FUNC13(c->querybuf+1+c->qb_pos,newline-(c->querybuf+1+c->qb_pos),&ll);
        if (!ok || ll > 1024*1024) {
            FUNC0(c,"Protocol error: invalid multibulk length");
            FUNC11("invalid mbulk count",c);
            return C_ERR;
        }

        c->qb_pos = (newline-c->querybuf)+2;

        if (ll <= 0) return C_OK;

        c->multibulklen = ll;

        /* Setup argv array on client structure */
        if (c->argv) FUNC14(c->argv);
        c->argv = FUNC15(sizeof(robj*)*c->multibulklen);
    }

    FUNC10(c,NULL,c->multibulklen > 0);
    while(c->multibulklen) {
        /* Read bulk length if unknown */
        if (c->bulklen == -1) {
            newline = FUNC12(c->querybuf+c->qb_pos,'\r');
            if (newline == NULL) {
                if (FUNC7(c->querybuf)-c->qb_pos > PROTO_INLINE_MAX_SIZE) {
                    FUNC0(c,
                        "Protocol error: too big bulk count string");
                    FUNC11("too big bulk count string",c);
                    return C_ERR;
                }
                break;
            }

            /* Buffer should also contain \n */
            if (newline-(c->querybuf+c->qb_pos) > (ssize_t)(FUNC7(c->querybuf)-c->qb_pos-2))
                break;

            if (c->querybuf[c->qb_pos] != '$') {
                FUNC1(c,
                    "Protocol error: expected '$', got '%c'",
                    c->querybuf[c->qb_pos]);
                FUNC11("expected $ but got something else",c);
                return C_ERR;
            }

            ok = FUNC13(c->querybuf+c->qb_pos+1,newline-(c->querybuf+c->qb_pos+1),&ll);
            if (!ok || ll < 0 || ll > server.proto_max_bulk_len) {
                FUNC0(c,"Protocol error: invalid bulk length");
                FUNC11("invalid bulk length",c);
                return C_ERR;
            }

            c->qb_pos = newline-c->querybuf+2;
            if (ll >= PROTO_MBULK_BIG_ARG) {
                /* If we are going to read a large object from network
                 * try to make it likely that it will start at c->querybuf
                 * boundary so that we can optimize object creation
                 * avoiding a large copy of data.
                 *
                 * But only when the data we have not parsed is less than
                 * or equal to ll+2. If the data length is greater than
                 * ll+2, trimming querybuf is just a waste of time, because
                 * at this time the querybuf contains not only our bulk. */
                if (FUNC7(c->querybuf)-c->qb_pos <= (size_t)ll+2) {
                    FUNC9(c->querybuf,c->qb_pos,-1);
                    c->qb_pos = 0;
                    /* Hint the sds library about the amount of bytes this string is
                     * going to contain. */
                    c->querybuf = FUNC5(c->querybuf,ll+2);
                }
            }
            c->bulklen = ll;
        }

        /* Read bulk argument */
        if (FUNC7(c->querybuf)-c->qb_pos < (size_t)(c->bulklen+2)) {
            /* Not enough data (+2 == trailing \r\n) */
            break;
        } else {
            /* Optimization: if the buffer contains JUST our bulk element
             * instead of creating a new object by *copying* the sds we
             * just use the current sds string. */
            if (c->qb_pos == 0 &&
                c->bulklen >= PROTO_MBULK_BIG_ARG &&
                FUNC7(c->querybuf) == (size_t)(c->bulklen+2))
            {
                c->argv[c->argc++] = FUNC2(OBJ_STRING,c->querybuf);
                FUNC4(c->querybuf,-2); /* remove CRLF */
                /* Assume that if we saw a fat argument we'll see another one
                 * likely... */
                c->querybuf = FUNC8(SDS_NOINIT,c->bulklen+2);
                FUNC6(c->querybuf);
            } else {
                c->argv[c->argc++] =
                    FUNC3(c->querybuf+c->qb_pos,c->bulklen);
                c->qb_pos += c->bulklen+2;
            }
            c->bulklen = -1;
            c->multibulklen--;
        }
    }

    /* We're done when c->multibulk == 0 */
    if (c->multibulklen == 0) return C_OK;

    /* Still not ready to process the command */
    return C_ERR;
}