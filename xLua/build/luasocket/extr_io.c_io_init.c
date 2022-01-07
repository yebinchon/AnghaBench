
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int p_send ;
typedef int p_recv ;
typedef TYPE_1__* p_io ;
typedef int p_error ;
struct TYPE_3__ {void* ctx; int error; int recv; int send; } ;



void io_init(p_io io, p_send send, p_recv recv, p_error error, void *ctx) {
    io->send = send;
    io->recv = recv;
    io->error = error;
    io->ctx = ctx;
}
