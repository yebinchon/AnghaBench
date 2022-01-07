
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_5__ {int pszVal; } ;
struct TYPE_6__ {TYPE_1__ u; int vt; } ;
typedef TYPE_2__ PROPVARIANT ;
typedef scalar_t__ HRESULT ;


 int CoTaskMemAlloc (scalar_t__) ;
 int CoTaskMemFree (int *) ;
 int PropVariantClear (TYPE_2__*) ;
 scalar_t__ PropVariantToStringAlloc (TYPE_2__*,int **) ;
 scalar_t__ S_OK ;
 int VT_LPSTR ;
 int VT_NULL ;
 int emptyW ;
 int lstrcmpW (int *,int ) ;
 int ok (int,char*,scalar_t__) ;
 int strcpy (int ,int ) ;
 scalar_t__ strlen (int ) ;
 int topic ;
 int topicW ;
 scalar_t__ wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_PropVariantToStringAlloc(void)
{
    PROPVARIANT prop;
    WCHAR *str;
    HRESULT hres;

    prop.vt = VT_NULL;
    hres = PropVariantToStringAlloc(&prop, &str);
    ok(hres == S_OK, "returned %x\n", hres);
    ok(!lstrcmpW(str, emptyW), "got %s\n", wine_dbgstr_w(str));
    CoTaskMemFree(str);

    prop.vt = VT_LPSTR;
    prop.u.pszVal = CoTaskMemAlloc(strlen(topic)+1);
    strcpy(prop.u.pszVal, topic);
    hres = PropVariantToStringAlloc(&prop, &str);
    ok(hres == S_OK, "returned %x\n", hres);
    ok(!lstrcmpW(str, topicW), "got %s\n", wine_dbgstr_w(str));
    CoTaskMemFree(str);
    PropVariantClear(&prop);
}
