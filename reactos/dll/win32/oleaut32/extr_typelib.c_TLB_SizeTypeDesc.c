
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* lpadesc; TYPE_3__* lptdesc; } ;
struct TYPE_7__ {int vt; TYPE_2__ u; } ;
struct TYPE_5__ {size_t cDims; TYPE_3__ tdescElem; } ;
typedef TYPE_3__ TYPEDESC ;
typedef int SIZE_T ;
typedef scalar_t__ BOOL ;


 int ARRAYDESC ;
 scalar_t__ FALSE ;
 int FIELD_OFFSET (int ,int ) ;
 scalar_t__ TRUE ;



 int * rgbounds ;

__attribute__((used)) static SIZE_T TLB_SizeTypeDesc( const TYPEDESC *tdesc, BOOL alloc_initial_space )
{
    SIZE_T size = 0;

    if (alloc_initial_space)
        size += sizeof(TYPEDESC);

    switch (tdesc->vt)
    {
    case 129:
    case 128:
        size += TLB_SizeTypeDesc(tdesc->u.lptdesc, TRUE);
        break;
    case 130:
        size += FIELD_OFFSET(ARRAYDESC, rgbounds[tdesc->u.lpadesc->cDims]);
        size += TLB_SizeTypeDesc(&tdesc->u.lpadesc->tdescElem, FALSE);
        break;
    }
    return size;
}
