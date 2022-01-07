
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int sltg_ref_lookup_t ;
typedef int WORD ;
struct TYPE_9__ {int cDims; int rgsabound; } ;
struct TYPE_7__ {TYPE_3__* lptdesc; TYPE_1__* lpadesc; int hreftype; } ;
struct TYPE_8__ {int vt; TYPE_2__ u; } ;
struct TYPE_6__ {int cDims; TYPE_3__ tdescElem; int rgbounds; } ;
typedef TYPE_3__ TYPEDESC ;
typedef int SAFEARRAYBOUND ;
typedef TYPE_4__ SAFEARRAY ;
typedef int BOOL ;
typedef int ARRAYDESC ;


 int FALSE ;
 int TRUE ;




 void* heap_alloc_zero (int) ;
 int memcpy (int ,int ,int) ;
 int sltg_get_typelib_ref (int const*,int,int *) ;

__attribute__((used)) static WORD *SLTG_DoType(WORD *pType, char *pBlk, TYPEDESC *pTD, const sltg_ref_lookup_t *ref_lookup)
{
    BOOL done = FALSE;

    while(!done) {
        if((*pType & 0xe00) == 0xe00) {
     pTD->vt = 130;
     pTD->u.lptdesc = heap_alloc_zero(sizeof(TYPEDESC));
     pTD = pTD->u.lptdesc;
 }
 switch(*pType & 0x3f) {
 case 130:
     pTD->vt = 130;
     pTD->u.lptdesc = heap_alloc_zero(sizeof(TYPEDESC));
     pTD = pTD->u.lptdesc;
     break;

 case 128:
     pTD->vt = 128;
            sltg_get_typelib_ref(ref_lookup, *(++pType) / 4, &pTD->u.hreftype);
     done = TRUE;
     break;

 case 131:
   {



     SAFEARRAY *pSA = (SAFEARRAY *)(pBlk + *(++pType));

     pTD->vt = 131;
     pTD->u.lpadesc = heap_alloc_zero(sizeof(ARRAYDESC) + (pSA->cDims - 1) * sizeof(SAFEARRAYBOUND));
     pTD->u.lpadesc->cDims = pSA->cDims;
     memcpy(pTD->u.lpadesc->rgbounds, pSA->rgsabound,
     pSA->cDims * sizeof(SAFEARRAYBOUND));

     pTD = &pTD->u.lpadesc->tdescElem;
     break;
   }

 case 129:
   {



     pType++;
     pTD->vt = 129;
     pTD->u.lptdesc = heap_alloc_zero(sizeof(TYPEDESC));
     pTD = pTD->u.lptdesc;
     break;
   }
 default:
     pTD->vt = *pType & 0x3f;
     done = TRUE;
     break;
 }
 pType++;
    }
    return pType;
}
