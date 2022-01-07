
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int write_buffer_len; scalar_t__ write_buffer; } ;
typedef TYPE_1__ WriteIndexInfo ;


 unsigned int WRITE_BUFFER_SIZE ;
 scalar_t__ ce_write_flush (TYPE_1__*,int) ;
 int memcpy (scalar_t__,void*,unsigned int) ;

__attribute__((used)) static int ce_write(WriteIndexInfo *info, int fd, void *data, unsigned int len)
{
    while (len) {
        unsigned int buffered = info->write_buffer_len;
        unsigned int partial = WRITE_BUFFER_SIZE - buffered;
        if (partial > len)
            partial = len;
        memcpy(info->write_buffer + buffered, data, partial);
        buffered += partial;
        if (buffered == WRITE_BUFFER_SIZE) {
            info->write_buffer_len = buffered;
            if (ce_write_flush(info, fd))
                return -1;
            buffered = 0;
        }
        info->write_buffer_len = buffered;
        len -= partial;
        data = (char *) data + partial;
    }
    return 0;
}
