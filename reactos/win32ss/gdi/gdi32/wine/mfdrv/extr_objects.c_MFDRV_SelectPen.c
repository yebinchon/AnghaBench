
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct brush_pattern {int dummy; } ;
typedef int pen ;
struct TYPE_15__ {scalar_t__ y; int x; } ;
struct TYPE_19__ {int elpColor; int elpWidth; int elpPenStyle; int lopnColor; TYPE_1__ lopnWidth; int lopnStyle; } ;
struct TYPE_16__ {scalar_t__ y; int x; } ;
struct TYPE_18__ {int lopnColor; TYPE_2__ lopnWidth; int lopnStyle; } ;
struct TYPE_17__ {int hdc; } ;
typedef TYPE_3__* PHYSDEV ;
typedef TYPE_4__ LOGPEN16 ;
typedef TYPE_5__ LOGPEN ;
typedef scalar_t__ INT16 ;
typedef int INT ;
typedef int HPEN ;
typedef TYPE_5__ EXTLOGPEN ;


 int GDI_hdc_using_object (int ,int ) ;
 int GetObjectW (int ,int,TYPE_5__*) ;
 int GetProcessHeap () ;
 TYPE_5__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_5__*) ;
 scalar_t__ MFDRV_CreatePenIndirect (TYPE_3__*,int ,TYPE_4__*) ;
 scalar_t__ MFDRV_FindObject (TYPE_3__*,int ) ;
 scalar_t__ MFDRV_SelectObject (TYPE_3__*,scalar_t__) ;

HPEN MFDRV_SelectPen( PHYSDEV dev, HPEN hpen, const struct brush_pattern *pattern )
{
    LOGPEN16 logpen;
    INT16 index;

    index = MFDRV_FindObject(dev, hpen);
    if( index < 0 )
    {

        INT size = GetObjectW( hpen, 0, ((void*)0) );

        if (!size) return 0;

        if (size == sizeof(LOGPEN))
        {
            LOGPEN pen;

            GetObjectW( hpen, sizeof(pen), &pen );
            logpen.lopnStyle = pen.lopnStyle;
            logpen.lopnWidth.x = pen.lopnWidth.x;
            logpen.lopnWidth.y = pen.lopnWidth.y;
            logpen.lopnColor = pen.lopnColor;
        }
        else
        {
            EXTLOGPEN *elp = HeapAlloc( GetProcessHeap(), 0, size );

            GetObjectW( hpen, size, elp );

            logpen.lopnStyle = elp->elpPenStyle;
            logpen.lopnWidth.x = elp->elpWidth;
            logpen.lopnWidth.y = 0;
            logpen.lopnColor = elp->elpColor;

            HeapFree( GetProcessHeap(), 0, elp );
        }

        index = MFDRV_CreatePenIndirect( dev, hpen, &logpen );
        if( index < 0 )
            return 0;
        GDI_hdc_using_object(hpen, dev->hdc);
    }
    return MFDRV_SelectObject( dev, index ) ? hpen : 0;
}
