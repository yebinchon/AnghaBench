
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hGlobal; } ;
struct TYPE_5__ {int * pUnkForRelease; int tymed; } ;
typedef TYPE_1__ STGMEDIUM ;
typedef int HGLOBAL ;


 int GMEM_DDESHARE ;
 int GMEM_MOVEABLE ;
 int GlobalAlloc (int,int) ;
 char* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int TYMED_HGLOBAL ;
 TYPE_3__* U (TYPE_1__*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void create_text(STGMEDIUM *med)
{
    HGLOBAL handle;
    char *p;

    handle = GlobalAlloc(GMEM_DDESHARE|GMEM_MOVEABLE, 5);
    p = GlobalLock(handle);
    strcpy(p, "test");
    GlobalUnlock(handle);

    med->tymed = TYMED_HGLOBAL;
    U(med)->hGlobal = handle;
    med->pUnkForRelease = ((void*)0);
}
