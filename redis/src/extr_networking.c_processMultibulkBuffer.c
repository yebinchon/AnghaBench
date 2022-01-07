
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ssize_t ;
typedef int robj ;
struct TYPE_8__ {long long multibulklen; scalar_t__ argc; char* querybuf; int qb_pos; int bulklen; int * argv; } ;
typedef TYPE_1__ client ;
struct TYPE_9__ {long long proto_max_bulk_len; } ;


 int C_ERR ;
 int C_OK ;
 int OBJ_STRING ;
 int PROTO_INLINE_MAX_SIZE ;
 long long PROTO_MBULK_BIG_ARG ;
 int SDS_NOINIT ;
 int addReplyError (TYPE_1__*,char*) ;
 int addReplyErrorFormat (TYPE_1__*,char*,char) ;
 int createObject (int ,char*) ;
 int createStringObject (char*,int) ;
 int sdsIncrLen (char*,int) ;
 char* sdsMakeRoomFor (char*,long long) ;
 int sdsclear (char*) ;
 size_t sdslen (char*) ;
 char* sdsnewlen (int ,int) ;
 int sdsrange (char*,size_t,int) ;
 TYPE_4__ server ;
 int serverAssertWithInfo (TYPE_1__*,int *,int) ;
 int setProtocolError (char*,TYPE_1__*) ;
 char* strchr (char*,char) ;
 int string2ll (char*,int,long long*) ;
 int zfree (int *) ;
 int * zmalloc (int) ;

int processMultibulkBuffer(client *c) {
    char *newline = ((void*)0);
    int ok;
    long long ll;

    if (c->multibulklen == 0) {

        serverAssertWithInfo(c,((void*)0),c->argc == 0);


        newline = strchr(c->querybuf+c->qb_pos,'\r');
        if (newline == ((void*)0)) {
            if (sdslen(c->querybuf)-c->qb_pos > PROTO_INLINE_MAX_SIZE) {
                addReplyError(c,"Protocol error: too big mbulk count string");
                setProtocolError("too big mbulk count string",c);
            }
            return C_ERR;
        }


        if (newline-(c->querybuf+c->qb_pos) > (ssize_t)(sdslen(c->querybuf)-c->qb_pos-2))
            return C_ERR;



        serverAssertWithInfo(c,((void*)0),c->querybuf[c->qb_pos] == '*');
        ok = string2ll(c->querybuf+1+c->qb_pos,newline-(c->querybuf+1+c->qb_pos),&ll);
        if (!ok || ll > 1024*1024) {
            addReplyError(c,"Protocol error: invalid multibulk length");
            setProtocolError("invalid mbulk count",c);
            return C_ERR;
        }

        c->qb_pos = (newline-c->querybuf)+2;

        if (ll <= 0) return C_OK;

        c->multibulklen = ll;


        if (c->argv) zfree(c->argv);
        c->argv = zmalloc(sizeof(robj*)*c->multibulklen);
    }

    serverAssertWithInfo(c,((void*)0),c->multibulklen > 0);
    while(c->multibulklen) {

        if (c->bulklen == -1) {
            newline = strchr(c->querybuf+c->qb_pos,'\r');
            if (newline == ((void*)0)) {
                if (sdslen(c->querybuf)-c->qb_pos > PROTO_INLINE_MAX_SIZE) {
                    addReplyError(c,
                        "Protocol error: too big bulk count string");
                    setProtocolError("too big bulk count string",c);
                    return C_ERR;
                }
                break;
            }


            if (newline-(c->querybuf+c->qb_pos) > (ssize_t)(sdslen(c->querybuf)-c->qb_pos-2))
                break;

            if (c->querybuf[c->qb_pos] != '$') {
                addReplyErrorFormat(c,
                    "Protocol error: expected '$', got '%c'",
                    c->querybuf[c->qb_pos]);
                setProtocolError("expected $ but got something else",c);
                return C_ERR;
            }

            ok = string2ll(c->querybuf+c->qb_pos+1,newline-(c->querybuf+c->qb_pos+1),&ll);
            if (!ok || ll < 0 || ll > server.proto_max_bulk_len) {
                addReplyError(c,"Protocol error: invalid bulk length");
                setProtocolError("invalid bulk length",c);
                return C_ERR;
            }

            c->qb_pos = newline-c->querybuf+2;
            if (ll >= PROTO_MBULK_BIG_ARG) {
                if (sdslen(c->querybuf)-c->qb_pos <= (size_t)ll+2) {
                    sdsrange(c->querybuf,c->qb_pos,-1);
                    c->qb_pos = 0;


                    c->querybuf = sdsMakeRoomFor(c->querybuf,ll+2);
                }
            }
            c->bulklen = ll;
        }


        if (sdslen(c->querybuf)-c->qb_pos < (size_t)(c->bulklen+2)) {

            break;
        } else {



            if (c->qb_pos == 0 &&
                c->bulklen >= PROTO_MBULK_BIG_ARG &&
                sdslen(c->querybuf) == (size_t)(c->bulklen+2))
            {
                c->argv[c->argc++] = createObject(OBJ_STRING,c->querybuf);
                sdsIncrLen(c->querybuf,-2);


                c->querybuf = sdsnewlen(SDS_NOINIT,c->bulklen+2);
                sdsclear(c->querybuf);
            } else {
                c->argv[c->argc++] =
                    createStringObject(c->querybuf+c->qb_pos,c->bulklen);
                c->qb_pos += c->bulklen+2;
            }
            c->bulklen = -1;
            c->multibulklen--;
        }
    }


    if (c->multibulklen == 0) return C_OK;


    return C_ERR;
}
