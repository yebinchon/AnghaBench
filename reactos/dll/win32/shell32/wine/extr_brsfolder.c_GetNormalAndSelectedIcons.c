
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* iSelectedImage; void* iImage; } ;
typedef TYPE_1__* LPTVITEMW ;
typedef int * LPITEMIDLIST ;
typedef int DWORD ;


 void* GetIcon (int *,int) ;
 int ILFree (int *) ;
 int SHGFI_OPENICON ;
 int SHGFI_PIDL ;
 int SHGFI_SMALLICON ;
 int SHGFI_SYSICONINDEX ;
 int TRACE (char*,int *,TYPE_1__*) ;
 int * _ILCreateDesktop () ;

__attribute__((used)) static void GetNormalAndSelectedIcons(LPITEMIDLIST lpifq, LPTVITEMW lpTV_ITEM)
{
    LPITEMIDLIST pidlDesktop = ((void*)0);
    DWORD flags;

    TRACE("%p %p\n",lpifq, lpTV_ITEM);

    if (!lpifq)
    {
        pidlDesktop = _ILCreateDesktop();
        lpifq = pidlDesktop;
    }

    flags = SHGFI_PIDL | SHGFI_SYSICONINDEX | SHGFI_SMALLICON;
    lpTV_ITEM->iImage = GetIcon( lpifq, flags );

    flags = SHGFI_PIDL | SHGFI_SYSICONINDEX | SHGFI_SMALLICON | SHGFI_OPENICON;
    lpTV_ITEM->iSelectedImage = GetIcon( lpifq, flags );

    if (pidlDesktop)
        ILFree( pidlDesktop );
}
