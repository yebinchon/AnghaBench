
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {size_t datalen; int * data; } ;
typedef TYPE_1__ send_context ;
struct TYPE_5__ {size_t length; int csum; } ;
typedef TYPE_2__ btrfs_send_command ;
typedef size_t ULONG ;


 int calc_crc32c (int ,int *,size_t) ;

__attribute__((used)) static void send_command_finish(send_context* context, ULONG pos) {
    btrfs_send_command* bsc = (btrfs_send_command*)&context->data[pos];

    bsc->length = context->datalen - pos - sizeof(btrfs_send_command);
    bsc->csum = calc_crc32c(0, (uint8_t*)bsc, context->datalen - pos);
}
