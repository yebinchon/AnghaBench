
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int attr; scalar_t__ name; } ;
struct TYPE_7__ {TYPE_1__ dir_ent; struct TYPE_7__* next; struct TYPE_7__* first; } ;
typedef int FDSC ;
typedef int DOS_FS ;
typedef TYPE_2__ DOS_FILE ;


 int ATTR_DIR ;
 int MSDOS_DOT ;
 int MSDOS_DOTDOT ;
 int MSDOS_NAME ;
 int file_cd (int **,char*) ;
 TYPE_2__* root ;
 scalar_t__ scan_dir (int *,TYPE_2__*,int ) ;
 scalar_t__ strncmp (char const*,int ,int ) ;

__attribute__((used)) static int subdirs(DOS_FS * fs, DOS_FILE * parent, FDSC ** cp)
{
    DOS_FILE *walk;

    for (walk = parent ? parent->first : root; walk; walk = walk->next)
 if (walk->dir_ent.attr & ATTR_DIR)
     if (strncmp((const char *)walk->dir_ent.name, MSDOS_DOT, MSDOS_NAME)
  && strncmp((const char *)walk->dir_ent.name, MSDOS_DOTDOT,
      MSDOS_NAME))
  if (scan_dir(fs, walk, file_cd(cp, (char *)walk->dir_ent.name)))
      return 1;
    return 0;
}
