
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_5__ {size_t pos; scalar_t__ buf; int fd; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
struct TYPE_7__ {TYPE_2__ io; } ;
typedef TYPE_3__ rio ;


 scalar_t__ ETIMEDOUT ;
 scalar_t__ EWOULDBLOCK ;
 size_t PROTO_IOBUF_LEN ;
 scalar_t__ errno ;
 scalar_t__ sdscatlen (scalar_t__,void const*,size_t) ;
 int sdsclear (scalar_t__) ;
 size_t sdslen (scalar_t__) ;
 int write (int ,unsigned char*,size_t) ;

__attribute__((used)) static size_t rioFdWrite(rio *r, const void *buf, size_t len) {
    ssize_t retval;
    unsigned char *p = (unsigned char*) buf;
    int doflush = (buf == ((void*)0) && len == 0);





    if (len > PROTO_IOBUF_LEN) {

        if (sdslen(r->io.fd.buf)) {
            if (rioFdWrite(r, ((void*)0), 0) == 0)
                return 0;
        }

    } else {
        if (len) {
            r->io.fd.buf = sdscatlen(r->io.fd.buf,buf,len);
            if (sdslen(r->io.fd.buf) > PROTO_IOBUF_LEN)
                doflush = 1;
            if (!doflush)
                return 1;
        }

        p = (unsigned char*) r->io.fd.buf;
        len = sdslen(r->io.fd.buf);
    }

    size_t nwritten = 0;
    while(nwritten != len) {
        retval = write(r->io.fd.fd,p+nwritten,len-nwritten);
        if (retval <= 0) {




            if (retval == -1 && errno == EWOULDBLOCK) errno = ETIMEDOUT;
            return 0;
        }
        nwritten += retval;
    }

    r->io.fd.pos += len;
    sdsclear(r->io.fd.buf);
    return 1;
}
