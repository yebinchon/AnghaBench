
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int * lpVtbl; } ;
struct TYPE_10__ {int ref; TYPE_3__ IEnumVARIANT_iface; int size; scalar_t__ i; TYPE_2__* sa; } ;
typedef TYPE_1__ safearray_iter ;
struct TYPE_11__ {int fFeatures; } ;
typedef TYPE_2__ SAFEARRAY ;
typedef TYPE_3__ IEnumVARIANT ;
typedef int HRESULT ;


 int E_NOTIMPL ;
 int E_OUTOFMEMORY ;
 int FADF_VARIANT ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int) ;
 int S_OK ;
 int SafeArrayLock (TYPE_2__*) ;
 int get_safearray_size (TYPE_2__*) ;
 TYPE_1__* heap_alloc (int) ;
 int heap_free (TYPE_1__*) ;
 int safearray_iter_EnumVARIANTVtbl ;

HRESULT create_safearray_iter(SAFEARRAY *sa, IEnumVARIANT **ev)
{
    safearray_iter *iter;
    HRESULT hres;

    if(sa && !(sa->fFeatures & FADF_VARIANT)) {
        FIXME("enumeration not supported: %x\n", sa->fFeatures);
        return E_NOTIMPL;
    }

    iter = heap_alloc(sizeof(*iter));
    if(!iter)
        return E_OUTOFMEMORY;

    if(sa) {
        hres = SafeArrayLock(sa);
        if(FAILED(hres)) {
            heap_free(iter);
            return hres;
        }
    }

    iter->IEnumVARIANT_iface.lpVtbl = &safearray_iter_EnumVARIANTVtbl;
    iter->ref = 1;
    iter->sa = sa;
    iter->i = 0;
    iter->size = get_safearray_size(sa);

    *ev = &iter->IEnumVARIANT_iface;
    return S_OK;
}
