
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int p_timeout ;
typedef TYPE_1__* p_io ;
typedef TYPE_2__* p_buffer ;
struct TYPE_5__ {size_t sent; int tm; TYPE_1__* io; } ;
struct TYPE_4__ {int (* send ) (int ,char const*,size_t,size_t*,int ) ;int ctx; } ;


 int IO_DONE ;
 size_t STEPSIZE ;
 int stub1 (int ,char const*,size_t,size_t*,int ) ;

__attribute__((used)) static int sendraw(p_buffer buf, const char *data, size_t count, size_t *sent) {
    p_io io = buf->io;
    p_timeout tm = buf->tm;
    size_t total = 0;
    int err = IO_DONE;
    while (total < count && err == IO_DONE) {
        size_t done = 0;
        size_t step = (count-total <= STEPSIZE)? count-total: STEPSIZE;
        err = io->send(io->ctx, data+total, step, &done, tm);
        total += done;
    }
    *sent = total;
    buf->sent += total;
    return err;
}
