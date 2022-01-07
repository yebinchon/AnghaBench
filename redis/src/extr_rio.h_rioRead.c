
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; size_t max_processing_chunk; scalar_t__ (* read ) (TYPE_1__*,void*,size_t) ;size_t processed_bytes; int (* update_cksum ) (TYPE_1__*,void*,size_t) ;} ;
typedef TYPE_1__ rio ;


 int RIO_FLAG_READ_ERROR ;
 scalar_t__ stub1 (TYPE_1__*,void*,size_t) ;
 int stub2 (TYPE_1__*,void*,size_t) ;

__attribute__((used)) static inline size_t rioRead(rio *r, void *buf, size_t len) {
    if (r->flags & RIO_FLAG_READ_ERROR) return 0;
    while (len) {
        size_t bytes_to_read = (r->max_processing_chunk && r->max_processing_chunk < len) ? r->max_processing_chunk : len;
        if (r->read(r,buf,bytes_to_read) == 0) {
            r->flags |= RIO_FLAG_READ_ERROR;
            return 0;
        }
        if (r->update_cksum) r->update_cksum(r,buf,bytes_to_read);
        buf = (char*)buf + bytes_to_read;
        len -= bytes_to_read;
        r->processed_bytes += bytes_to_read;
    }
    return 1;
}
