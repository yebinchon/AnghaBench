
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int process_type; int magic; } ;
struct TYPE_4__ {int* child_info_pipe; TYPE_1__ child_info_data; } ;


 int CHILD_INFO_MAGIC ;
 TYPE_2__ server ;
 scalar_t__ write (int,TYPE_1__*,scalar_t__) ;

void sendChildInfo(int ptype) {
    if (server.child_info_pipe[1] == -1) return;
    server.child_info_data.magic = CHILD_INFO_MAGIC;
    server.child_info_data.process_type = ptype;
    ssize_t wlen = sizeof(server.child_info_data);
    if (write(server.child_info_pipe[1],&server.child_info_data,wlen) != wlen) {

    }
}
