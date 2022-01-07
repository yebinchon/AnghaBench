
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
typedef int PHYSDEV ;
typedef TYPE_1__ EMFDRV_PDEVICE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 scalar_t__ get_emfdev (int ) ;

__attribute__((used)) static BOOL emfpathdrv_DeleteDC( PHYSDEV dev )
{
    EMFDRV_PDEVICE *physdev = (EMFDRV_PDEVICE *)get_emfdev( dev );

    physdev->path = FALSE;
    return TRUE;
}
