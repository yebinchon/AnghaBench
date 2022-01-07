
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * emh; } ;
typedef int HENHMETAFILE ;
typedef int ENHMETAHEADER ;
typedef TYPE_1__ ENHMETAFILEOBJ ;


 TYPE_1__* GDI_GetObjPtr (int ,int ) ;
 int GDI_ReleaseObj (int ) ;
 int OBJ_ENHMETAFILE ;
 int TRACE (char*,int ,TYPE_1__*) ;

__attribute__((used)) static ENHMETAHEADER *EMF_GetEnhMetaHeader( HENHMETAFILE hmf )
{
    ENHMETAHEADER *ret = ((void*)0);
    ENHMETAFILEOBJ *metaObj = GDI_GetObjPtr( hmf, OBJ_ENHMETAFILE );
    TRACE("hmf %p -> enhmetaObj %p\n", hmf, metaObj);
    if (metaObj)
    {
        ret = metaObj->emh;
        GDI_ReleaseObj( hmf );
    }
    return ret;
}
