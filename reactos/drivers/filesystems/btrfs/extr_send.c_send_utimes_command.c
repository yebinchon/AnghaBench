
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int datalen; } ;
typedef TYPE_1__ send_context ;
typedef int ULONG ;
typedef char BTRFS_TIME ;


 int BTRFS_SEND_CMD_UTIMES ;
 int BTRFS_SEND_TLV_ATIME ;
 int BTRFS_SEND_TLV_CTIME ;
 int BTRFS_SEND_TLV_MTIME ;
 int BTRFS_SEND_TLV_PATH ;
 int send_add_tlv (TYPE_1__*,int ,char*,int) ;
 int send_command (TYPE_1__*,int ) ;
 int send_command_finish (TYPE_1__*,int ) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void send_utimes_command(send_context* context, char* path, BTRFS_TIME* atime, BTRFS_TIME* mtime, BTRFS_TIME* ctime) {
    ULONG pos = context->datalen;

    send_command(context, BTRFS_SEND_CMD_UTIMES);

    send_add_tlv(context, BTRFS_SEND_TLV_PATH, path, path ? (uint16_t)strlen(path) : 0);
    send_add_tlv(context, BTRFS_SEND_TLV_ATIME, atime, sizeof(BTRFS_TIME));
    send_add_tlv(context, BTRFS_SEND_TLV_MTIME, mtime, sizeof(BTRFS_TIME));
    send_add_tlv(context, BTRFS_SEND_TLV_CTIME, ctime, sizeof(BTRFS_TIME));

    send_command_finish(context, pos);
}
