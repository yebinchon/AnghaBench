
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_2__ {scalar_t__ hModule; int (* ExtProc ) (int *,int ,long) ;} ;
typedef size_t INT ;
typedef int HMENU ;
typedef int HANDLE ;


 int DeleteMenu (int ,int ,int ) ;
 int FMEVENT_UNLOAD ;
 int FreeLibrary (int ) ;
 int FreeToolbarExtensions () ;
 int GetMenu (int ) ;
 int IDM_EXTENSIONS ;
 int MF_BYPOSITION ;
 int MapIDMToMenuPos (int ) ;
 TYPE_1__* extensions ;
 int hwndFrame ;
 size_t iNumExtensions ;
 int stub1 (int *,int ,long) ;

VOID
FreeExtensions()
{
   INT i;
   HMENU hMenuFrame;

   FreeToolbarExtensions();


   hMenuFrame = GetMenu(hwndFrame);


   UINT posToDelete = MapIDMToMenuPos(IDM_EXTENSIONS);

   for (i = 0; i < iNumExtensions; i++) {
      (extensions[i].ExtProc)(((void*)0), FMEVENT_UNLOAD, 0L);
      DeleteMenu(hMenuFrame, posToDelete, MF_BYPOSITION);
      FreeLibrary((HANDLE)extensions[i].hModule);
   }
   iNumExtensions = 0;
}
