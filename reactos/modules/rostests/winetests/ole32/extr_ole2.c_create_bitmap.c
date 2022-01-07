
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hBitmap; } ;
struct TYPE_5__ {int * pUnkForRelease; int tymed; } ;
typedef TYPE_1__ STGMEDIUM ;


 int CreateBitmap (int,int,int,int,int *) ;
 int TYMED_GDI ;
 TYPE_3__* U (TYPE_1__*) ;

__attribute__((used)) static void create_bitmap( STGMEDIUM *med )
{
    med->tymed = TYMED_GDI;
    U(med)->hBitmap = CreateBitmap( 1, 1, 1, 1, ((void*)0) );
    med->pUnkForRelease = ((void*)0);
}
