
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* emh; scalar_t__ on_disk; } ;
typedef int HENHMETAFILE ;
typedef TYPE_1__ ENHMETAFILEOBJ ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int UnmapViewOfFile (TYPE_1__*) ;
 TYPE_1__* free_gdi_handle (int ) ;

__attribute__((used)) static BOOL EMF_Delete_HENHMETAFILE( HENHMETAFILE hmf )
{
    ENHMETAFILEOBJ *metaObj = free_gdi_handle( hmf );

    if(!metaObj) return FALSE;

    if(metaObj->on_disk)
        UnmapViewOfFile( metaObj->emh );
    else
        HeapFree( GetProcessHeap(), 0, metaObj->emh );
    return HeapFree( GetProcessHeap(), 0, metaObj );
}
