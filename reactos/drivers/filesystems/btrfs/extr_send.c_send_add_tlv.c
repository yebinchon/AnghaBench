
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_5__ {size_t datalen; int * data; } ;
typedef TYPE_1__ send_context ;
struct TYPE_6__ {void* length; void* type; } ;
typedef TYPE_2__ btrfs_send_tlv ;


 int RtlCopyMemory (TYPE_2__*,void*,void*) ;

__attribute__((used)) static void send_add_tlv(send_context* context, uint16_t type, void* data, uint16_t length) {
    btrfs_send_tlv* tlv = (btrfs_send_tlv*)&context->data[context->datalen];

    tlv->type = type;
    tlv->length = length;

    if (length > 0 && data)
        RtlCopyMemory(&tlv[1], data, length);

    context->datalen += sizeof(btrfs_send_tlv) + length;
}
