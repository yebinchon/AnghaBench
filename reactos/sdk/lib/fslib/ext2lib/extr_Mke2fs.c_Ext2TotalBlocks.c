
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PEXT2_FILESYS ;


 int BLOCK_BITS ;
 int EXT2_NDIR_BLOCKS ;

ULONG
Ext2TotalBlocks(PEXT2_FILESYS Ext2Sys, ULONG DataBlocks)
{
    ULONG dwData[4] = {1, 1, 1, 1};
    ULONG dwMeta[4] = {0, 0, 0, 0};
    ULONG TotalBlocks = 0;
    ULONG i, j;

    if (DataBlocks <= EXT2_NDIR_BLOCKS)
    {
        return DataBlocks;
    }

    DataBlocks -= EXT2_NDIR_BLOCKS;

    for (i = 0; i < 4; i++)
    {
        dwData[i] = dwData[i] << ((BLOCK_BITS - 2) * i);

        if (i > 0)
        {
            dwMeta[i] = 1 + (dwMeta[i - 1] << (BLOCK_BITS - 2));
        }
    }

    for( i=1; (i < 4) && (DataBlocks > 0); i++)
    {
        if (DataBlocks >= dwData[i])
        {
            DataBlocks -= dwData[i];
            TotalBlocks += (dwData[i] + dwMeta[i]);
        }
        else
        {
            ULONG dwDivide = 0;
            ULONG dwRemain = 0;

            for (j=i; (j > 0) && (DataBlocks > 0); j--)
            {
                dwDivide = (DataBlocks) / (dwData[j-1]);
                dwRemain = (DataBlocks) % (dwData[j-1]);

                TotalBlocks += (dwDivide * (dwData[j-1] + dwMeta[j-1]) + 1);
                DataBlocks = dwRemain;
            }
        }
    }

    return (TotalBlocks + EXT2_NDIR_BLOCKS);
}
