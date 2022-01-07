
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int lcase; int attr; struct TYPE_6__* name; } ;
struct TYPE_5__ {TYPE_3__ dir_ent; int offset; int lfn_offset; scalar_t__ lfn; } ;
typedef TYPE_1__ DOS_FILE ;


 int ATTR_DIR ;
 int ATTR_VOLUME ;
 int FAT_NO_83NAME ;
 scalar_t__ MSDOS_NAME ;
 int VfatPrint (char*) ;
 int fflush (int ) ;
 scalar_t__ fgets (char*,int,int ) ;
 scalar_t__ file_cvt (unsigned char*,TYPE_3__*) ;
 int fs_write (int ,scalar_t__,TYPE_3__*) ;
 int lfn_fix_checksum (int ,int ,char const*) ;
 int printf (char*) ;
 int stdin ;
 int stdout ;
 scalar_t__ strchr (char const*,char) ;
 scalar_t__ strrchr (char const*,int ) ;

__attribute__((used)) static void rename_file(DOS_FILE * file)
{

    unsigned char name[46];
    unsigned char *walk, *here;


    if (!file->offset) {

 printf("Cannot rename FAT32 root dir\n");



 return;
    }
    while (1) {

 printf("New name: ");
 fflush(stdout);
 if (fgets((char *)name, 45, stdin)) {
     if ((here = (unsigned char *)strchr((const char *)name, '\n')))
  *here = 0;
     for (walk = (unsigned char *)strrchr((const char *)name, 0);
   walk >= name && (*walk == ' ' || *walk == '\t'); walk--) ;
     walk[1] = 0;
     for (walk = name; *walk == ' ' || *walk == '\t'; walk++) ;
     if (file_cvt(walk, file->dir_ent.name)) {
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
 }



    }
}
