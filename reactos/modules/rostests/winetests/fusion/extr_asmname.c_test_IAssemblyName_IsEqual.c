
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IAssemblyName ;
typedef scalar_t__ HRESULT ;


 int ASM_CMPF_IL_ALL ;
 int CANOF_PARSE_DISPLAY_NAME ;
 scalar_t__ IAssemblyName_IsEqual (int *,int *,int ) ;
 int IAssemblyName_Release (int *) ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pCreateAssemblyNameObject (int **,char const*,int ,int *) ;

__attribute__((used)) static void test_IAssemblyName_IsEqual(void)
{
    static const WCHAR wine1[] =
        {'w','i','n','e',0};
    static const WCHAR wine2[] =
        {'w','i','n','e',',','v','e','r','s','i','o','n','=','1','.','0','.','0','.','0',0};
    static const WCHAR wine3[] =
        {'w','i','n','e',',','v','e','r','s','i','o','n','=','1','.','0','.','0','.','0',',',
         'c','u','l','t','u','r','e','=','n','e','u','t','r','a','l',0};
    static const WCHAR wine4[] =
        {'w','i','n','e',',','v','e','r','s','i','o','n','=','1','.','0','.','0','.','0',',',
         'c','u','l','t','u','r','e','=','e','n',0};
    static const WCHAR wine5[] =
        {'w','i','n','e',',','v','e','r','s','i','o','n','=','1','.','0','.','0','.','0',',',
         'p','u','b','l','i','c','K','e','y','T','o','k','e','n','=','1','2','3','4','5','6',
         '7','8','9','0','a','b','c','d','e','f',0};
    HRESULT hr;
    IAssemblyName *name1, *name2;

    hr = pCreateAssemblyNameObject( &name1, wine1, CANOF_PARSE_DISPLAY_NAME, ((void*)0) );
    ok( hr == S_OK, "got %08x\n", hr );

    hr = pCreateAssemblyNameObject( &name2, wine1, CANOF_PARSE_DISPLAY_NAME, ((void*)0) );
    ok( hr == S_OK, "got %08x\n", hr );

    if (0) {
    hr = IAssemblyName_IsEqual( name1, ((void*)0), 0 );
    ok( hr == S_FALSE, "got %08x\n", hr );

    hr = IAssemblyName_IsEqual( name1, ((void*)0), ASM_CMPF_IL_ALL );
    ok( hr == S_FALSE, "got %08x\n", hr );
    }

    hr = IAssemblyName_IsEqual( name1, name1, ASM_CMPF_IL_ALL );
    ok( hr == S_OK, "got %08x\n", hr );

    hr = IAssemblyName_IsEqual( name1, name2, ASM_CMPF_IL_ALL );
    ok( hr == S_OK, "got %08x\n", hr );

    IAssemblyName_Release( name2 );
    hr = pCreateAssemblyNameObject( &name2, wine2, CANOF_PARSE_DISPLAY_NAME, ((void*)0) );
    ok( hr == S_OK, "got %08x\n", hr );

    hr = IAssemblyName_IsEqual( name1, name2, ASM_CMPF_IL_ALL );
    ok( hr == S_OK, "got %08x\n", hr );

    IAssemblyName_Release( name2 );
    hr = pCreateAssemblyNameObject( &name2, wine3, CANOF_PARSE_DISPLAY_NAME, ((void*)0) );
    ok( hr == S_OK, "got %08x\n", hr );

    hr = IAssemblyName_IsEqual( name1, name2, ASM_CMPF_IL_ALL );
    ok( hr == S_OK, "got %08x\n", hr );

    IAssemblyName_Release( name1 );
    hr = pCreateAssemblyNameObject( &name1, wine4, CANOF_PARSE_DISPLAY_NAME, ((void*)0) );
    ok( hr == S_OK, "got %08x\n", hr );

    hr = IAssemblyName_IsEqual( name1, name2, ASM_CMPF_IL_ALL );
    ok( hr == S_FALSE, "got %08x\n", hr );

    IAssemblyName_Release( name1 );
    hr = pCreateAssemblyNameObject( &name1, wine1, CANOF_PARSE_DISPLAY_NAME, ((void*)0) );
    ok( hr == S_OK, "got %08x\n", hr );

    IAssemblyName_Release( name2 );
    hr = pCreateAssemblyNameObject( &name2, wine5, CANOF_PARSE_DISPLAY_NAME, ((void*)0) );
    ok( hr == S_OK, "got %08x\n", hr );

    hr = IAssemblyName_IsEqual( name1, name2, ASM_CMPF_IL_ALL );
    ok( hr == S_OK, "got %08x\n", hr );

    IAssemblyName_Release( name1 );
    IAssemblyName_Release( name2 );
}
