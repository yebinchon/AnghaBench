
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int xExt; int yExt; int hMF; int mm; } ;
typedef TYPE_1__ METAFILEPICT ;
typedef int HMETAFILEPICT ;
typedef int HGLOBAL ;


 int GMEM_MOVEABLE ;
 int GlobalAlloc (int ,int) ;
 TYPE_1__* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int MM_ANISOTROPIC ;
 int create_mf () ;

__attribute__((used)) static HMETAFILEPICT create_metafilepict(void)
{
    HGLOBAL ret = GlobalAlloc(GMEM_MOVEABLE, sizeof(METAFILEPICT));
    METAFILEPICT *mf = GlobalLock(ret);
    mf->mm = MM_ANISOTROPIC;
    mf->xExt = 100;
    mf->yExt = 200;
    mf->hMF = create_mf();
    GlobalUnlock(ret);
    return ret;
}
