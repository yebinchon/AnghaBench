
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* defaultAnonPassword; scalar_t__ htried; char* ourHostName; int magic; } ;
typedef TYPE_1__* FTPLIPtr ;


 int FTPInitializeOurHostName (TYPE_1__* const) ;
 int GetUsrName (char*,int) ;
 int STRNCAT (char*,char*) ;
 int STRNCPY (char*,char*) ;
 int kLibraryMagic ;
 scalar_t__ strcmp (int ,int ) ;

void
FTPInitializeAnonPassword(const FTPLIPtr lip)
{
 if (lip == ((void*)0))
  return;
 if (strcmp(lip->magic, kLibraryMagic))
  return;

 FTPInitializeOurHostName(lip);

 if (lip->defaultAnonPassword[0] == '\0') {
  (void) STRNCPY(lip->defaultAnonPassword, "NcFTP@");

 }
}
