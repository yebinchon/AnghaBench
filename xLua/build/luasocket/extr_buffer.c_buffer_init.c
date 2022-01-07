
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int p_timeout ;
typedef int p_io ;
typedef TYPE_1__* p_buffer ;
struct TYPE_3__ {int birthday; scalar_t__ sent; scalar_t__ received; int tm; int io; scalar_t__ last; scalar_t__ first; } ;


 int timeout_gettime () ;

void buffer_init(p_buffer buf, p_io io, p_timeout tm) {
    buf->first = buf->last = 0;
    buf->io = io;
    buf->tm = tm;
    buf->received = buf->sent = 0;
    buf->birthday = timeout_gettime();
}
