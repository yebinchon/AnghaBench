
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_4__ {scalar_t__ magic; scalar_t__ process_type; int cow_size; } ;
struct TYPE_3__ {int* child_info_pipe; TYPE_2__ child_info_data; int stat_module_cow_bytes; int stat_aof_cow_bytes; int stat_rdb_cow_bytes; } ;


 scalar_t__ CHILD_INFO_MAGIC ;
 scalar_t__ CHILD_INFO_TYPE_AOF ;
 scalar_t__ CHILD_INFO_TYPE_MODULE ;
 scalar_t__ CHILD_INFO_TYPE_RDB ;
 scalar_t__ read (int,TYPE_2__*,scalar_t__) ;
 TYPE_1__ server ;

void receiveChildInfo(void) {
    if (server.child_info_pipe[0] == -1) return;
    ssize_t wlen = sizeof(server.child_info_data);
    if (read(server.child_info_pipe[0],&server.child_info_data,wlen) == wlen &&
        server.child_info_data.magic == CHILD_INFO_MAGIC)
    {
        if (server.child_info_data.process_type == CHILD_INFO_TYPE_RDB) {
            server.stat_rdb_cow_bytes = server.child_info_data.cow_size;
        } else if (server.child_info_data.process_type == CHILD_INFO_TYPE_AOF) {
            server.stat_aof_cow_bytes = server.child_info_data.cow_size;
        } else if (server.child_info_data.process_type == CHILD_INFO_TYPE_MODULE) {
            server.stat_module_cow_bytes = server.child_info_data.cow_size;
        }
    }
}
