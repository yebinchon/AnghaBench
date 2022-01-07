
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int hMetaFilePict; } ;
struct TYPE_8__ {int xExt; int yExt; int hMF; int mm; } ;
struct TYPE_7__ {int * pUnkForRelease; int tymed; } ;
typedef TYPE_1__ STGMEDIUM ;
typedef TYPE_2__ METAFILEPICT ;
typedef int HDC ;


 int CloseMetaFile (int ) ;
 int CreateMetaFileW (int *) ;
 int GMEM_MOVEABLE ;
 int GlobalAlloc (int ,int) ;
 TYPE_2__* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int MM_ANISOTROPIC ;
 int Rectangle (int ,int ,int ,int,int) ;
 int TYMED_MFPICT ;
 TYPE_4__* U (TYPE_1__*) ;

__attribute__((used)) static void create_mfpict(STGMEDIUM *med)
{
    METAFILEPICT *mf;
    HDC hdc = CreateMetaFileW(((void*)0));

    Rectangle(hdc, 0, 0, 100, 200);

    med->tymed = TYMED_MFPICT;
    U(med)->hMetaFilePict = GlobalAlloc(GMEM_MOVEABLE, sizeof(METAFILEPICT));
    mf = GlobalLock(U(med)->hMetaFilePict);
    mf->mm = MM_ANISOTROPIC;
    mf->xExt = 100;
    mf->yExt = 200;
    mf->hMF = CloseMetaFile(hdc);
    GlobalUnlock(U(med)->hMetaFilePict);
    med->pUnkForRelease = ((void*)0);
}
