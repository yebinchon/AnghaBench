
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int styleid_t ;
typedef int nsAString ;
typedef char WCHAR ;
struct TYPE_3__ {int nsstyle; } ;
typedef int PRUnichar ;
typedef int LONG ;
typedef TYPE_1__ HTMLStyle ;
typedef scalar_t__ HRESULT ;


 scalar_t__ E_NOTIMPL ;
 scalar_t__ E_POINTER ;
 int FIXME (char*,int ) ;
 scalar_t__ S_OK ;
 int debugstr_w (int const*) ;
 scalar_t__ get_nsstyle_attr_nsval (int ,int ,int *) ;
 scalar_t__ isdigitW (char) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,int const**) ;
 int nsAString_Init (int *,int *) ;
 int pxW ;
 scalar_t__ strcmpW (char*,int ) ;
 int strtolW (int const*,char**,int) ;

__attribute__((used)) static HRESULT get_nsstyle_pixel_val(HTMLStyle *This, styleid_t sid, LONG *p)
{
    nsAString str_value;
    HRESULT hres;

    if(!p)
        return E_POINTER;

    nsAString_Init(&str_value, ((void*)0));

    hres = get_nsstyle_attr_nsval(This->nsstyle, sid, &str_value);
    if(hres == S_OK) {
        WCHAR *ptr;
        const PRUnichar *value;

        nsAString_GetData(&str_value, &value);
        if(value) {
            *p = strtolW(value, &ptr, 10);

            if(*ptr == '.') {

                while(isdigitW(*++ptr));
            }

            if(*ptr && strcmpW(ptr, pxW)) {
                nsAString_Finish(&str_value);
                FIXME("%s: only px values are currently supported\n", debugstr_w(value));
                hres = E_NOTIMPL;
            }
        }else {
            *p = 0;
        }
    }

    nsAString_Finish(&str_value);
    return hres;
}
