
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef char uint64_t ;
typedef int uint16_t ;
struct TYPE_6__ {int datalen; } ;
typedef TYPE_1__ send_context ;
typedef int ULONG ;


 int BTRFS_SEND_CMD_CHOWN ;
 int BTRFS_SEND_TLV_GID ;
 int BTRFS_SEND_TLV_PATH ;
 int BTRFS_SEND_TLV_UID ;
 int send_add_tlv (TYPE_1__*,int ,char*,int) ;
 int send_command (TYPE_1__*,int ) ;
 int send_command_finish (TYPE_1__*,int ) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void send_chown_command(send_context* context, char* path, uint64_t uid, uint64_t gid) {
    ULONG pos = context->datalen;

    send_command(context, BTRFS_SEND_CMD_CHOWN);

    send_add_tlv(context, BTRFS_SEND_TLV_PATH, path, path ? (uint16_t)strlen(path) : 0);
    send_add_tlv(context, BTRFS_SEND_TLV_UID, &uid, sizeof(uint64_t));
    send_add_tlv(context, BTRFS_SEND_TLV_GID, &gid, sizeof(uint64_t));

    send_command_finish(context, pos);
}
