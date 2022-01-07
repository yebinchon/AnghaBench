
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int emr ;
struct TYPE_11__ {int nSize; int iType; } ;
struct TYPE_8__ {scalar_t__ y; int x; } ;
struct TYPE_9__ {int elpColor; int lopnColor; TYPE_1__ lopnWidth; int elpWidth; int elpPenStyle; int lopnStyle; } ;
struct TYPE_10__ {TYPE_7__ emr; scalar_t__ ihPen; TYPE_2__ lopn; } ;
typedef int PHYSDEV ;
typedef int INT ;
typedef int HPEN ;
typedef TYPE_2__ EXTLOGPEN ;
typedef TYPE_3__ EMRCREATEPEN ;
typedef scalar_t__ DWORD ;


 scalar_t__ EMFDRV_AddHandle (int ,int ) ;
 int EMFDRV_WriteRecord (int ,TYPE_7__*) ;
 int EMR_CREATEPEN ;
 int GetObjectW (int ,int,TYPE_2__*) ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;

__attribute__((used)) static DWORD EMFDRV_CreatePenIndirect(PHYSDEV dev, HPEN hPen)
{
    EMRCREATEPEN emr;
    DWORD index = 0;

    if (!GetObjectW( hPen, sizeof(emr.lopn), &emr.lopn ))
    {

        EXTLOGPEN *elp;
        INT size = GetObjectW( hPen, 0, ((void*)0) );

        if (!size) return 0;

        elp = HeapAlloc( GetProcessHeap(), 0, size );

        GetObjectW( hPen, size, elp );

        emr.lopn.lopnStyle = elp->elpPenStyle;
        emr.lopn.lopnWidth.x = elp->elpWidth;
        emr.lopn.lopnWidth.y = 0;
        emr.lopn.lopnColor = elp->elpColor;

        HeapFree( GetProcessHeap(), 0, elp );
    }

    emr.emr.iType = EMR_CREATEPEN;
    emr.emr.nSize = sizeof(emr);
    emr.ihPen = index = EMFDRV_AddHandle( dev, hPen );

    if(!EMFDRV_WriteRecord( dev, &emr.emr ))
        index = 0;
    return index;
}
