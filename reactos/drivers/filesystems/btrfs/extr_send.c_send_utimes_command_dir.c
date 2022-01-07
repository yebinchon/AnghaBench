
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int namelen; int name; int parent; } ;
typedef TYPE_1__ send_dir ;
struct TYPE_10__ {int datalen; } ;
typedef TYPE_2__ send_context ;
typedef int ULONG ;
typedef int BTRFS_TIME ;


 int BTRFS_SEND_CMD_UTIMES ;
 int BTRFS_SEND_TLV_ATIME ;
 int BTRFS_SEND_TLV_CTIME ;
 int BTRFS_SEND_TLV_MTIME ;
 int BTRFS_SEND_TLV_PATH ;
 int send_add_tlv (TYPE_2__*,int ,int *,int) ;
 int send_add_tlv_path (TYPE_2__*,int ,int ,int ,int ) ;
 int send_command (TYPE_2__*,int ) ;
 int send_command_finish (TYPE_2__*,int ) ;

__attribute__((used)) static void send_utimes_command_dir(send_context* context, send_dir* sd, BTRFS_TIME* atime, BTRFS_TIME* mtime, BTRFS_TIME* ctime) {
    ULONG pos = context->datalen;

    send_command(context, BTRFS_SEND_CMD_UTIMES);

    send_add_tlv_path(context, BTRFS_SEND_TLV_PATH, sd->parent, sd->name, sd->namelen);

    send_add_tlv(context, BTRFS_SEND_TLV_ATIME, atime, sizeof(BTRFS_TIME));
    send_add_tlv(context, BTRFS_SEND_TLV_MTIME, mtime, sizeof(BTRFS_TIME));
    send_add_tlv(context, BTRFS_SEND_TLV_CTIME, ctime, sizeof(BTRFS_TIME));

    send_command_finish(context, pos);
}
