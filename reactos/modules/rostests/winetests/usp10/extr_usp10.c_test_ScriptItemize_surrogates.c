
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WORD ;
typedef int WCHAR ;
struct TYPE_4__ {int eScript; } ;
struct TYPE_5__ {TYPE_1__ a; } ;
typedef TYPE_2__ SCRIPT_ITEM ;
typedef int HRESULT ;


 int SCRIPT_UNDEFINED ;
 int S_OK ;
 int ScriptItemize (int*,int,int,int *,int *,TYPE_2__*,int*) ;
 int make_surrogate (int,int*) ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_ScriptItemize_surrogates(void)
{
    HRESULT hr;
    WCHAR surrogate[2];
    WORD Script_Surrogates;
    SCRIPT_ITEM items[2];
    int num;


    surrogate[0] = 0xd800;
    hr = ScriptItemize( surrogate, 1, 2, ((void*)0), ((void*)0), items, &num );
    ok( hr == S_OK, "got %08x\n", hr );
    ok( num == 1, "got %d\n", num );
    ok( items[0].a.eScript != SCRIPT_UNDEFINED, "got script %x\n", items[0].a.eScript );
    Script_Surrogates = items[0].a.eScript;


    make_surrogate( 0x01ffff, surrogate );
    hr = ScriptItemize( surrogate, 2, 2, ((void*)0), ((void*)0), items, &num );
    ok( hr == S_OK, "got %08x\n", hr );
    ok( num == 1, "got %d\n", num );
    ok( items[0].a.eScript == Script_Surrogates, "got script %x\n", items[0].a.eScript );
}
