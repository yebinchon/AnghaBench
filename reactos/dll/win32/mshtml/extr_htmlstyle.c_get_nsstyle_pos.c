
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int styleid_t ;
typedef int nsAString ;
typedef scalar_t__ WCHAR ;
struct TYPE_3__ {int nsstyle; } ;
typedef int PRUnichar ;
typedef TYPE_1__ HTMLStyle ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_FAIL ;
 int FIXME (char*) ;
 scalar_t__ S_OK ;
 int TRACE (char*,...) ;
 scalar_t__ get_nsstyle_attr_nsval (int ,int ,int *) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,int const**) ;
 int nsAString_Init (int *,int *) ;
 int pxW ;
 scalar_t__ strcmpW (scalar_t__*,int ) ;
 float strtolW (int const*,scalar_t__**,int) ;

__attribute__((used)) static HRESULT get_nsstyle_pos(HTMLStyle *This, styleid_t sid, float *p)
{
    nsAString str_value;
    HRESULT hres;

    TRACE("%p %d %p\n", This, sid, p);

    *p = 0.0f;

    nsAString_Init(&str_value, ((void*)0));

    hres = get_nsstyle_attr_nsval(This->nsstyle, sid, &str_value);
    if(hres == S_OK)
    {
        WCHAR *ptr;
        const PRUnichar *value;

        nsAString_GetData(&str_value, &value);
        if(value)
        {
            *p = strtolW(value, &ptr, 10);

            if(*ptr && strcmpW(ptr, pxW))
            {
                nsAString_Finish(&str_value);
                FIXME("only px values are currently supported\n");
                hres = E_FAIL;
            }
        }
    }

    TRACE("ret %f\n", *p);

    nsAString_Finish(&str_value);
    return hres;
}
