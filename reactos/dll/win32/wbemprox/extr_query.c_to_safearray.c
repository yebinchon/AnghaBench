
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct array {int count; scalar_t__ ptr; } ;
typedef int WCHAR ;
typedef scalar_t__ VARTYPE ;
typedef int UINT ;
typedef int SAFEARRAY ;
typedef int LONG ;
typedef int CIMTYPE ;
typedef void* BSTR ;


 scalar_t__ S_OK ;
 int * SafeArrayCreateVector (scalar_t__,int ,int) ;
 int SafeArrayDestroy (int *) ;
 scalar_t__ SafeArrayPutElement (int *,int*,void*) ;
 void* SysAllocString (int const*) ;
 int SysFreeString (void*) ;
 scalar_t__ VT_BSTR ;
 int get_type_size (int ) ;
 scalar_t__ to_vartype (int ) ;

SAFEARRAY *to_safearray( const struct array *array, CIMTYPE type )
{
    SAFEARRAY *ret;
    UINT size = get_type_size( type );
    VARTYPE vartype = to_vartype( type );
    LONG i;

    if (!array || !(ret = SafeArrayCreateVector( vartype, 0, array->count ))) return ((void*)0);

    for (i = 0; i < array->count; i++)
    {
        void *ptr = (char *)array->ptr + i * size;
        if (vartype == VT_BSTR)
        {
            BSTR str = SysAllocString( *(const WCHAR **)ptr );
            if (!str || SafeArrayPutElement( ret, &i, str ) != S_OK)
            {
                SysFreeString( str );
                SafeArrayDestroy( ret );
                return ((void*)0);
            }
            SysFreeString( str );
        }
        else if (SafeArrayPutElement( ret, &i, ptr ) != S_OK)
        {
            SafeArrayDestroy( ret );
            return ((void*)0);
        }
    }
    return ret;
}
