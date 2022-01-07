
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef int BlockBackend ;
typedef TYPE_1__ BHandle ;


 int close (int ) ;

__attribute__((used)) static int
block_backend_fs_close_block (BlockBackend *bend,
                                BHandle *handle)
{
    int ret;

    ret = close (handle->fd);

    return ret;
}
