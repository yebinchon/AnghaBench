
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* ext2_dblist ;
struct TYPE_6__ {scalar_t__ magic; TYPE_1__* fs; struct TYPE_6__* list; } ;
struct TYPE_5__ {TYPE_2__* dblist; } ;


 scalar_t__ EXT2_ET_MAGIC_DBLIST ;
 int ext2fs_free_mem (TYPE_2__**) ;

void ext2fs_free_dblist(ext2_dblist dblist)
{
 if (!dblist || (dblist->magic != EXT2_ET_MAGIC_DBLIST))
  return;

 if (dblist->list)
  ext2fs_free_mem(&dblist->list);
 dblist->list = 0;
 if (dblist->fs && dblist->fs->dblist == dblist)
  dblist->fs->dblist = 0;
 dblist->magic = 0;
 ext2fs_free_mem(&dblist);
}
