
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ htried; int ourHostName; int hresult; int magic; } ;
typedef TYPE_1__* FTPLIPtr ;


 int GetOurHostName (int ,int) ;
 int kLibraryMagic ;
 int memset (int ,int ,int) ;
 scalar_t__ strcmp (int ,int ) ;

void
FTPInitializeOurHostName(const FTPLIPtr lip)
{
 if (lip == ((void*)0))
  return;
 if (strcmp(lip->magic, kLibraryMagic))
  return;

 if (lip->htried == 0) {
  (void) memset(lip->ourHostName, 0, sizeof(lip->ourHostName));
  lip->hresult = GetOurHostName(lip->ourHostName, sizeof(lip->ourHostName));
 }
 lip->htried++;
}
