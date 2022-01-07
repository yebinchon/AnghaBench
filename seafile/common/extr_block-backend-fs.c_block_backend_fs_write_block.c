
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef int BlockBackend ;
typedef TYPE_1__ BHandle ;


 int writen (int ,void const*,int) ;

__attribute__((used)) static int
block_backend_fs_write_block (BlockBackend *bend,
                                BHandle *handle,
                                const void *buf, int len)
{
    return (writen (handle->fd, buf, len));
}
