
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int write_buffer_len; int write_buffer; int context; } ;
typedef TYPE_1__ WriteIndexInfo ;


 int g_checksum_update (int ,int ,unsigned int) ;
 unsigned int writen (int,int ,unsigned int) ;

__attribute__((used)) static int ce_write_flush(WriteIndexInfo *info, int fd)
{
    unsigned int buffered = info->write_buffer_len;
    if (buffered) {
        g_checksum_update(info->context, info->write_buffer, buffered);
        if (writen(fd, info->write_buffer, buffered) != buffered)
            return -1;
        info->write_buffer_len = 0;
    }
    return 0;
}
