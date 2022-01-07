
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hEnhMetaFile; } ;
struct TYPE_5__ {int * pUnkForRelease; int tymed; } ;
typedef TYPE_1__ STGMEDIUM ;
typedef int HDC ;


 int CloseEnhMetaFile (int ) ;
 int CreateEnhMetaFileW (int *,int *,int *,int *) ;
 int Rectangle (int ,int ,int ,int,int) ;
 int TYMED_ENHMF ;
 TYPE_3__* U (TYPE_1__*) ;

__attribute__((used)) static void create_emf(STGMEDIUM *med)
{
    HDC hdc = CreateEnhMetaFileW(((void*)0), ((void*)0), ((void*)0), ((void*)0));

    Rectangle(hdc, 0, 0, 150, 300);
    med->tymed = TYMED_ENHMF;
    U(med)->hEnhMetaFile = CloseEnhMetaFile(hdc);
    med->pUnkForRelease = ((void*)0);
}
