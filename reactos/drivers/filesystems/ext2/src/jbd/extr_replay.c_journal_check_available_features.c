
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int j_format_version; int * j_superblock; } ;
typedef TYPE_1__ journal_t ;
typedef int journal_superblock_t ;


 unsigned long JFS_KNOWN_COMPAT_FEATURES ;
 unsigned long JFS_KNOWN_INCOMPAT_FEATURES ;
 unsigned long JFS_KNOWN_ROCOMPAT_FEATURES ;

int journal_check_available_features (journal_t *journal, unsigned long compat,
                                      unsigned long ro, unsigned long incompat)
{
    journal_superblock_t *sb;

    if (!compat && !ro && !incompat)
        return 1;

    sb = journal->j_superblock;





    if (journal->j_format_version != 2)
        return 0;

    if ((compat & JFS_KNOWN_COMPAT_FEATURES) == compat &&
            (ro & JFS_KNOWN_ROCOMPAT_FEATURES) == ro &&
            (incompat & JFS_KNOWN_INCOMPAT_FEATURES) == incompat)
        return 1;

    return 0;
}
