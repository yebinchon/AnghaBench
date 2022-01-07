
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef int cmsIOHANDLER ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;


 scalar_t__ _cmsCalloc (int ,int,int) ;
 int _cmsFree (int ,int *) ;
 int _cmsRead15Fixed16Number (int ,int *,int *) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
void *Type_S15Fixed16_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsFloat64Number* array_double;
    cmsUInt32Number i, n;
    cmsUNUSED_PARAMETER(self);

    *nItems = 0;
    n = SizeOfTag / sizeof(cmsUInt32Number);
    array_double = (cmsFloat64Number*) _cmsCalloc(ContextID, n, sizeof(cmsFloat64Number));
    if (array_double == ((void*)0)) return ((void*)0);

    for (i=0; i < n; i++) {

        if (!_cmsRead15Fixed16Number(ContextID, io, &array_double[i])) {

            _cmsFree(ContextID, array_double);
            return ((void*)0);
        }
    }

    *nItems = n;
    return (void*) array_double;
}
