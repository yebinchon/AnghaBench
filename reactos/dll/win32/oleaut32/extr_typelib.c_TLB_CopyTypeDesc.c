
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* lpadesc; TYPE_2__* lptdesc; } ;
struct TYPE_8__ {int vt; TYPE_1__ u; } ;
struct TYPE_9__ {size_t cDims; TYPE_2__ tdescElem; } ;
typedef TYPE_2__ TYPEDESC ;


 int ARRAYDESC ;
 int FIELD_OFFSET (int ,int ) ;



 int memcpy (TYPE_3__*,TYPE_3__*,int ) ;
 int * rgbounds ;

__attribute__((used)) static void *TLB_CopyTypeDesc( TYPEDESC *dest, const TYPEDESC *src, void *buffer )
{
    if (!dest)
    {
        dest = buffer;
        buffer = (char *)buffer + sizeof(TYPEDESC);
    }

    *dest = *src;

    switch (src->vt)
    {
    case 129:
    case 128:
        dest->u.lptdesc = buffer;
        buffer = TLB_CopyTypeDesc(((void*)0), src->u.lptdesc, buffer);
        break;
    case 130:
        dest->u.lpadesc = buffer;
        memcpy(dest->u.lpadesc, src->u.lpadesc, FIELD_OFFSET(ARRAYDESC, rgbounds[src->u.lpadesc->cDims]));
        buffer = (char *)buffer + FIELD_OFFSET(ARRAYDESC, rgbounds[src->u.lpadesc->cDims]);
        buffer = TLB_CopyTypeDesc(&dest->u.lpadesc->tdescElem, &src->u.lpadesc->tdescElem, buffer);
        break;
    }
    return buffer;
}
