
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t styleid_t ;
typedef int nsAString ;
typedef int VARIANT_BOOL ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int nsstyle; } ;
typedef int PRUnichar ;
typedef int LPCWSTR ;
typedef TYPE_1__ HTMLStyle ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*,int ,int ) ;
 int VARIANT_FALSE ;
 int VARIANT_TRUE ;
 int debugstr_w (int ) ;
 int get_nsstyle_attr_nsval (int ,size_t,int *) ;
 int nsAString_Finish (int *) ;
 int nsAString_GetData (int *,int const**) ;
 int nsAString_Init (int *,int *) ;
 scalar_t__ strcmpW (int const*,int ) ;
 TYPE_2__* style_tbl ;

__attribute__((used)) static HRESULT check_style_attr_value(HTMLStyle *This, styleid_t sid, LPCWSTR exval, VARIANT_BOOL *p)
{
    nsAString str_value;
    const PRUnichar *value;

    nsAString_Init(&str_value, ((void*)0));

    get_nsstyle_attr_nsval(This->nsstyle, sid, &str_value);

    nsAString_GetData(&str_value, &value);
    *p = strcmpW(value, exval) ? VARIANT_FALSE : VARIANT_TRUE;
    nsAString_Finish(&str_value);

    TRACE("%s -> %x\n", debugstr_w(style_tbl[sid].name), *p);
    return S_OK;
}
