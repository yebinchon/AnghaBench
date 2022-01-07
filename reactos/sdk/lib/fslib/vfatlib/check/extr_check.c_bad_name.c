
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* name; int lcase; } ;
struct TYPE_5__ {TYPE_1__ dir_ent; int * lfn; } ;
typedef TYPE_2__ DOS_FILE ;


 int FAT_NO_83NAME ;
 int MSDOS_NAME ;
 scalar_t__ atari_format ;
 scalar_t__ interactive ;
 scalar_t__ strchr (char const*,unsigned char const) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int bad_name(DOS_FILE * file)
{
    int i, spc, suspicious = 0;
    const char *bad_chars = atari_format ? "*?\\/:" : "*?<>|\"\\/:";
    const unsigned char *name = file->dir_ent.name;
    const unsigned char *ext = name + 8;



    if (strncmp((const char *)name, "EA DATA  SF", 11) == 0 ||
 strncmp((const char *)name, "WP ROOT  SF", 11) == 0)
 return 0;


    if ((file->lfn == ((void*)0)) && (file->dir_ent.lcase & FAT_NO_83NAME)) {
 return 1;
    }



    if (file->dir_ent.lcase & FAT_NO_83NAME)
 return 0;

    for (i = 0; i < MSDOS_NAME; i++) {
 if (name[i] < ' ' || name[i] == 0x7f)
     return 1;
 if (name[i] > 0x7f)
     ++suspicious;
 if (strchr(bad_chars, name[i]))
     return 1;
    }

    spc = 0;
    for (i = 0; i < 8; i++) {
 if (name[i] == ' ')
     spc = 1;
 else if (spc)


     return 1;
    }

    spc = 0;
    for (i = 0; i < 3; i++) {
 if (ext[i] == ' ')
     spc = 1;
 else if (spc)


     return 1;
    }


    if (atari_format && suspicious)
 return 1;
    return 0;


}
