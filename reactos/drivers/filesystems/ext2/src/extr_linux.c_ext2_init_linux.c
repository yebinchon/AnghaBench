
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ext2_init_bh () ;

int
ext2_init_linux()
{
    int rc = 0;

    rc = ext2_init_bh();
    if (rc != 0) {
        goto errorout;
    }

errorout:

    return rc;
}
