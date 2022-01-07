
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PEXT2_MCB ;


 int EXT2_FT_DIR ;
 int EXT2_FT_REG_FILE ;
 int EXT2_FT_SYMLINK ;
 scalar_t__ IsMcbDirectory (int ) ;
 scalar_t__ IsMcbSymLink (int ) ;

ULONG
Ext2InodeType(PEXT2_MCB Mcb)
{
    if (IsMcbSymLink(Mcb)) {
        return EXT2_FT_SYMLINK;
    }

    if (IsMcbDirectory(Mcb)) {
        return EXT2_FT_DIR;
    }

    return EXT2_FT_REG_FILE;
}
