
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gsize ;
struct TYPE_3__ {unsigned int write_buffer_len; scalar_t__ write_buffer; int context; } ;
typedef TYPE_1__ WriteIndexInfo ;


 unsigned int WRITE_BUFFER_SIZE ;
 int g_checksum_get_digest (int ,scalar_t__,int*) ;
 int g_checksum_update (int ,scalar_t__,unsigned int) ;
 unsigned int writen (int,scalar_t__,unsigned int) ;

__attribute__((used)) static int ce_flush(WriteIndexInfo *info, int fd)
{
    unsigned int left = info->write_buffer_len;
    gsize len = 20;

    if (left) {
        info->write_buffer_len = 0;
        g_checksum_update(info->context, info->write_buffer, left);
    }


    if (left + 20 > WRITE_BUFFER_SIZE) {
        if (writen(fd, info->write_buffer, left) != left)
            return -1;
        left = 0;
    }


    g_checksum_get_digest (info->context, info->write_buffer + left, &len);
    left += 20;
    return (writen(fd, info->write_buffer, left) != left) ? -1 : 0;
}
