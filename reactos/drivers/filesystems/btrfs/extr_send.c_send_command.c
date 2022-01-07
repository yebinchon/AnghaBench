
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {size_t datalen; int * data; } ;
typedef TYPE_1__ send_context ;
struct TYPE_5__ {scalar_t__ csum; int cmd; } ;
typedef TYPE_2__ btrfs_send_command ;



__attribute__((used)) static void send_command(send_context* context, uint16_t cmd) {
    btrfs_send_command* bsc = (btrfs_send_command*)&context->data[context->datalen];

    bsc->cmd = cmd;
    bsc->csum = 0;

    context->datalen += sizeof(btrfs_send_command);
}
