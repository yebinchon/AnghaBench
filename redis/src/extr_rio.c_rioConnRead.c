
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t pos; size_t read_limit; size_t read_so_far; scalar_t__ buf; int conn; } ;
struct TYPE_6__ {TYPE_1__ conn; } ;
struct TYPE_7__ {TYPE_2__ io; } ;
typedef TYPE_3__ rio ;


 scalar_t__ EOVERFLOW ;
 scalar_t__ ETIMEDOUT ;
 scalar_t__ EWOULDBLOCK ;
 size_t PROTO_IOBUF_LEN ;
 int connRead (int ,char*,size_t) ;
 scalar_t__ errno ;
 int memcpy (void*,char*,size_t) ;
 int sdsIncrLen (scalar_t__,int) ;
 scalar_t__ sdsMakeRoomFor (scalar_t__,size_t) ;
 size_t sdsavail (scalar_t__) ;
 size_t sdslen (scalar_t__) ;
 int sdsrange (scalar_t__,size_t,int) ;

__attribute__((used)) static size_t rioConnRead(rio *r, void *buf, size_t len) {
    size_t avail = sdslen(r->io.conn.buf)-r->io.conn.pos;


    if (sdslen(r->io.conn.buf) + sdsavail(r->io.conn.buf) < len)
        r->io.conn.buf = sdsMakeRoomFor(r->io.conn.buf, len - sdslen(r->io.conn.buf));



    if (len > avail && sdsavail(r->io.conn.buf) < len - avail) {
        sdsrange(r->io.conn.buf, r->io.conn.pos, -1);
        r->io.conn.pos = 0;
    }


    while (len > sdslen(r->io.conn.buf) - r->io.conn.pos) {
        size_t buffered = sdslen(r->io.conn.buf) - r->io.conn.pos;
        size_t toread = len - buffered;


        if (toread < PROTO_IOBUF_LEN) toread = PROTO_IOBUF_LEN;
        if (toread > sdsavail(r->io.conn.buf)) toread = sdsavail(r->io.conn.buf);
        if (r->io.conn.read_limit != 0 &&
            r->io.conn.read_so_far + buffered + toread > r->io.conn.read_limit)
        {
            if (r->io.conn.read_limit >= r->io.conn.read_so_far - buffered)
                toread = r->io.conn.read_limit - r->io.conn.read_so_far - buffered;
            else {
                errno = EOVERFLOW;
                return 0;
            }
        }
        int retval = connRead(r->io.conn.conn,
                          (char*)r->io.conn.buf + sdslen(r->io.conn.buf),
                          toread);
        if (retval <= 0) {
            if (errno == EWOULDBLOCK) errno = ETIMEDOUT;
            return 0;
        }
        sdsIncrLen(r->io.conn.buf, retval);
    }

    memcpy(buf, (char*)r->io.conn.buf + r->io.conn.pos, len);
    r->io.conn.read_so_far += len;
    r->io.conn.pos += len;
    return len;
}
