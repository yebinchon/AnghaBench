
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;


 unsigned char EXT3_FT_BLKDEV ;
 unsigned char EXT3_FT_CHRDEV ;
 unsigned char EXT3_FT_DIR ;
 unsigned char EXT3_FT_FIFO ;
 unsigned char EXT3_FT_REG_FILE ;
 unsigned char EXT3_FT_SOCK ;
 unsigned char EXT3_FT_SYMLINK ;





 int S_IFMT ;



unsigned char ext3_type_by_mode(umode_t mode)
{
    unsigned char type = 0;

    switch (mode & S_IFMT) {
    case 129:
        type = EXT3_FT_REG_FILE;
        break;
    case 132:
        type = EXT3_FT_DIR;
        break;
    case 133:
        type = EXT3_FT_CHRDEV;
        break;
    case 134:
        type = EXT3_FT_BLKDEV;
        break;
    case 131:
        type = EXT3_FT_FIFO;
        break;
    case 128:
        type = EXT3_FT_SOCK;
        break;
    case 130:
        type = EXT3_FT_SYMLINK;
    }

    return type;
}
