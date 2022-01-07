
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPVOID ;
typedef int LONG ;
typedef int IFont ;
typedef int HRESULT ;


 int EXPECT_HR (int ,int ) ;
 int E_POINTER ;
 int IFont_AddRef (int *) ;
 int IFont_QueryInterface (int *,int *,int **) ;
 int IFont_Release (int *) ;
 int IID_IFont ;
 int S_OK ;
 scalar_t__ broken (int) ;
 int ok (int,char*,...) ;
 int pOleCreateFontIndirect (int *,int *,int **) ;

__attribute__((used)) static void test_QueryInterface(void)
{
    LPVOID pvObj = ((void*)0);
    HRESULT hr;
    IFont* font = ((void*)0);
    LONG ref;

    hr = pOleCreateFontIndirect(((void*)0), &IID_IFont, ((void*)0));
    EXPECT_HR(hr, E_POINTER);

    hr = pOleCreateFontIndirect(((void*)0), &IID_IFont, &pvObj);
    font = pvObj;

    EXPECT_HR(hr, S_OK);
    ok(font != ((void*)0),"OCFI (NULL,..) returns NULL, instead of !NULL\n");

    pvObj = ((void*)0);
    hr = IFont_QueryInterface( font, &IID_IFont, &pvObj);
    EXPECT_HR(hr, S_OK);


    ref = IFont_AddRef(font);
    ok(ref == 3 ||
       broken(ref == 1),
           "IFont_QI expected ref value 3 but instead got %d\n", ref);
    IFont_Release(font);

    ok(pvObj != ((void*)0),"IFont_QI does return NULL, instead of a ptr\n");

    IFont_Release(font);
    IFont_Release(font);
}
