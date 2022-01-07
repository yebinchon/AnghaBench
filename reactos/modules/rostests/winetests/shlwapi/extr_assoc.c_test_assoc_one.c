
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assoc_test_struct {void* extension; void* type; void* perceived; void* flags; int hr; } ;
typedef void* PERCEIVED ;
typedef void* LPWSTR ;
typedef void* INT ;
typedef int HRESULT ;


 int CoTaskMemFree (void*) ;
 int SHStrDupA (void*,void**) ;
 int S_OK ;
 scalar_t__ StrCmpIW (void*,void*) ;
 scalar_t__ broken (int ) ;
 int expect_hr (int ,int ) ;
 int ok (int,char*,void*,void*,...) ;
 int pAssocGetPerceivedType (void*,void**,void**,void**) ;
 void* wine_dbgstr_w (void*) ;

__attribute__((used)) static void test_assoc_one(const struct assoc_test_struct* test)
{
    LPWSTR extension, type_expected, type_returned;
    PERCEIVED perceived;
    HRESULT hr;
    INT flags;


    SHStrDupA(test->extension, &extension);
    SHStrDupA(test->type, &type_expected);

    perceived = 0xdeadbeef;
    flags = 0xdeadbeef;

    hr = pAssocGetPerceivedType(extension, &perceived, &flags, ((void*)0));
    expect_hr(type_expected ? S_OK : test->hr, hr);
    ok(perceived == test->perceived, "%s: got perceived 0x%x, expected 0x%x\n",
       test->extension, perceived, test->perceived);
    ok(flags == test->flags, "%s: got flags 0x%x, expected 0x%x\n",
       test->extension, flags, test->flags);

    type_returned = (void *)0xdeadbeef;
    perceived = 0xdeadbeef;
    flags = 0xdeadbeef;

    hr = pAssocGetPerceivedType(extension, &perceived, &flags, &type_returned);
    expect_hr(type_expected ? S_OK : test->hr, hr);
    ok(perceived == test->perceived, "%s: got perceived 0x%x, expected 0x%x\n",
       test->extension, perceived, test->perceived);
    ok(flags == test->flags, "%s: got flags 0x%x, expected 0x%x\n",
       test->extension, flags, test->flags);

    if (!type_expected)
    {
        ok(type_returned == (void *)0xdeadbeef || broken(type_returned == ((void*)0)) ,
           "%s: got type %p, expected 0xdeadbeef\n", test->extension, type_returned);
    }
    else if (type_returned == (void *)0xdeadbeef)
    {
        ok(type_returned != (void *)0xdeadbeef, "%s: got type %p, expected '%s'\n",
           test->extension, type_returned, test->type);
    }
    else
    {
        ok(StrCmpIW(type_expected, type_returned) == 0, "%s: got type %s, expected '%s'\n",
           test->extension, wine_dbgstr_w(type_returned), test->type);
    }

    CoTaskMemFree(type_returned);
    CoTaskMemFree(extension);
    CoTaskMemFree(type_expected);
}
