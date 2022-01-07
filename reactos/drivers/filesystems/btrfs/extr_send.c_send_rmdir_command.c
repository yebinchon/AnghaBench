
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int datalen; } ;
typedef TYPE_1__ send_context ;
typedef int ULONG ;


 int BTRFS_SEND_CMD_RMDIR ;
 int BTRFS_SEND_TLV_PATH ;
 int send_add_tlv (TYPE_1__*,int ,char*,int ) ;
 int send_command (TYPE_1__*,int ) ;
 int send_command_finish (TYPE_1__*,int ) ;

__attribute__((used)) static void send_rmdir_command(send_context* context, uint16_t pathlen, char* path) {
    ULONG pos = context->datalen;

    send_command(context, BTRFS_SEND_CMD_RMDIR);
    send_add_tlv(context, BTRFS_SEND_TLV_PATH, path, pathlen);
    send_command_finish(context, pos);
}
