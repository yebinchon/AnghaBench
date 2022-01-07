
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lLbound; scalar_t__ cElements; } ;
typedef TYPE_1__ SAFEARRAYBOUND ;
typedef int SAFEARRAY ;
typedef scalar_t__ HRESULT ;


 int FALSE ;
 scalar_t__ S_OK ;
 int * SafeArrayCreate (int ,int,TYPE_1__*) ;
 scalar_t__ SafeArrayDestroy (int *) ;
 int TRUE ;
 int VT_INT_PTR ;
 int has_int_ptr ;
 int ok (int,char*,scalar_t__) ;
 int trace (char*) ;

__attribute__((used)) static void check_for_VT_INT_PTR(void)
{


    SAFEARRAY* a;
    SAFEARRAYBOUND bound;
    bound.cElements = 0;
    bound.lLbound = 0;
    a = SafeArrayCreate(VT_INT_PTR, 1, &bound);
    if (a) {
        HRESULT hres;
        trace("VT_INT_PTR is supported\n");
        has_int_ptr = TRUE;
        hres = SafeArrayDestroy(a);
        ok(hres == S_OK, "got 0x%08x\n", hres);
    }
    else {
        trace("VT_INT_PTR is not supported\n");
        has_int_ptr = FALSE;
    }
}
