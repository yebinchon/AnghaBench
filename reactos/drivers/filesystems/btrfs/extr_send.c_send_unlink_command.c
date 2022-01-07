
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint16_t ;
typedef int send_dir ;
struct TYPE_6__ {size_t datalen; int * data; } ;
typedef TYPE_1__ send_context ;
typedef size_t ULONG ;
typedef int NTSTATUS ;


 int BTRFS_SEND_CMD_UNLINK ;
 int BTRFS_SEND_TLV_PATH ;
 int STATUS_SUCCESS ;
 int find_path (char*,int *,char*,size_t) ;
 size_t find_path_len (int *,size_t) ;
 int send_add_tlv (TYPE_1__*,int ,int *,size_t) ;
 int send_command (TYPE_1__*,int ) ;
 int send_command_finish (TYPE_1__*,size_t) ;

__attribute__((used)) static NTSTATUS send_unlink_command(send_context* context, send_dir* parent, uint16_t namelen, char* name) {
    ULONG pos = context->datalen;
    uint16_t pathlen;

    send_command(context, BTRFS_SEND_CMD_UNLINK);

    pathlen = find_path_len(parent, namelen);
    send_add_tlv(context, BTRFS_SEND_TLV_PATH, ((void*)0), pathlen);

    find_path((char*)&context->data[context->datalen - pathlen], parent, name, namelen);

    send_command_finish(context, pos);

    return STATUS_SUCCESS;
}
