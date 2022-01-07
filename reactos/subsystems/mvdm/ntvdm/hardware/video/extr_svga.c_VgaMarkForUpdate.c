
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {void* Bottom; void* Top; void* Right; void* Left; } ;
typedef int SHORT ;


 void* MAXSHORT ;
 void* MINSHORT ;
 scalar_t__ NeedsUpdate ;
 scalar_t__ TRUE ;
 TYPE_1__ UpdateRectangle ;
 void* max (void*,int ) ;
 void* min (void*,int ) ;

__attribute__((used)) static inline VOID VgaMarkForUpdate(SHORT Row, SHORT Column)
{

    if (!NeedsUpdate)
    {
        UpdateRectangle.Left = UpdateRectangle.Top = MAXSHORT;
        UpdateRectangle.Right = UpdateRectangle.Bottom = MINSHORT;
    }


    UpdateRectangle.Left = min(UpdateRectangle.Left, Column);
    UpdateRectangle.Right = max(UpdateRectangle.Right, Column);
    UpdateRectangle.Top = min(UpdateRectangle.Top, Row);
    UpdateRectangle.Bottom = max(UpdateRectangle.Bottom, Row);


    NeedsUpdate = TRUE;
}
