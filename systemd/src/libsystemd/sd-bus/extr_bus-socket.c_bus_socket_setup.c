
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int message_version; scalar_t__ message_endian; int output_fd; int input_fd; } ;
typedef TYPE_1__ sd_bus ;


 int SNDBUF_SIZE ;
 int assert (TYPE_1__*) ;
 int fd_inc_rcvbuf (int ,int ) ;
 int fd_inc_sndbuf (int ,int ) ;

void bus_socket_setup(sd_bus *b) {
        assert(b);


        (void) fd_inc_rcvbuf(b->input_fd, SNDBUF_SIZE);
        (void) fd_inc_sndbuf(b->output_fd, SNDBUF_SIZE);

        b->message_version = 1;
        b->message_endian = 0;
}
