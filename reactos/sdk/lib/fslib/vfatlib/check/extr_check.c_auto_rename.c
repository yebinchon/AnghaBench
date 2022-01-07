
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int lcase; int attr; struct TYPE_9__* name; } ;
struct TYPE_8__ {TYPE_4__ dir_ent; int offset; int lfn_offset; scalar_t__ lfn; struct TYPE_8__* next; TYPE_1__* parent; } ;
struct TYPE_7__ {TYPE_2__* first; } ;
typedef TYPE_2__ DOS_FILE ;


 int ATTR_DIR ;
 int ATTR_VOLUME ;
 int FAT_NO_83NAME ;
 scalar_t__ MSDOS_NAME ;
 int die (char*) ;
 int fs_write (int ,scalar_t__,TYPE_4__*) ;
 int lfn_fix_checksum (int ,int ,char const*) ;
 int memcpy (TYPE_4__*,char*,int) ;
 TYPE_2__* root ;
 int sprintf (char*,char*,unsigned long) ;
 int strncmp (char const*,char const*,scalar_t__) ;

__attribute__((used)) static void auto_rename(DOS_FILE * file)
{
    DOS_FILE *first, *walk;
    uint32_t number;

    if (!file->offset)
 return;
    first = file->parent ? file->parent->first : root;
    number = 0;
    while (1) {
 char num[8];
 sprintf(num, "%07lu", (unsigned long)number);
 memcpy(file->dir_ent.name, "FSCK", 4);
 memcpy(file->dir_ent.name + 4, num, 7);
 for (walk = first; walk; walk = walk->next)
     if (walk != file
  && !strncmp((const char *)walk->dir_ent.name,
       (const char *)file->dir_ent.name, MSDOS_NAME))
  break;
 if (!walk) {
     if (file->dir_ent.lcase & FAT_NO_83NAME) {


  file->dir_ent.lcase &= ~FAT_NO_83NAME;

  file->dir_ent.attr &= ~(ATTR_DIR | ATTR_VOLUME);
  fs_write(file->offset, MSDOS_NAME + 2, &file->dir_ent);
     } else {
  fs_write(file->offset, MSDOS_NAME, file->dir_ent.name);
     }
     if (file->lfn)
  lfn_fix_checksum(file->lfn_offset, file->offset,
     (const char *)file->dir_ent.name);
     return;
 }
 number++;
 if (number > 9999999) {
     die("Too many files need repair.");
 }
    }
    die("Can't generate a unique name.");
}
