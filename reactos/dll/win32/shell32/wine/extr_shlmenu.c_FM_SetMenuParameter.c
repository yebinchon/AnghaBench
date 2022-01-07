
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* UINT ;
struct TYPE_4__ {int lpfnCallback; void* uEnumFlags; void* uFlags; int pidl; void* uID; } ;
typedef int LPFNFMCALLBACK ;
typedef TYPE_1__* LPFMINFO ;
typedef int LPCITEMIDLIST ;
typedef int HMENU ;


 TYPE_1__* FM_GetMenuInfo (int ) ;
 int ILClone (int ) ;
 int SHFree (int ) ;
 int TRACE (char*) ;

__attribute__((used)) static LPFMINFO FM_SetMenuParameter(
 HMENU hmenu,
 UINT uID,
 LPCITEMIDLIST pidl,
 UINT uFlags,
 UINT uEnumFlags,
 LPFNFMCALLBACK lpfnCallback)
{
 LPFMINFO menudata;

 TRACE("\n");

 menudata = FM_GetMenuInfo(hmenu);

 SHFree(menudata->pidl);

 menudata->uID = uID;
 menudata->pidl = ILClone(pidl);
 menudata->uFlags = uFlags;
 menudata->uEnumFlags = uEnumFlags;
 menudata->lpfnCallback = lpfnCallback;

 return menudata;
}
