
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IUnknown ;
typedef int IMXAttributes ;
typedef int IDispatchEx ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_SAXAttributes ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int EXPECT_HR (int ,int ) ;
 int IDispatchEx_QueryInterface (int *,int *,void**) ;
 int IDispatchEx_Release (int *) ;
 int IID_IDispatchEx ;
 int IID_IMXAttributes ;
 int IID_IUnknown ;
 int IMXAttributes_QueryInterface (int *,int *,void**) ;
 int IMXAttributes_Release (int *) ;
 int IUnknown_Release (int *) ;
 int S_OK ;
 int test_obj_dispex (int *) ;

__attribute__((used)) static void test_mxattr_dispex(void)
{
    IMXAttributes *mxattr;
    IDispatchEx *dispex;
    IUnknown *unk;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_SAXAttributes, ((void*)0), CLSCTX_INPROC_SERVER,
            &IID_IMXAttributes, (void**)&mxattr);
    EXPECT_HR(hr, S_OK);

    hr = IMXAttributes_QueryInterface(mxattr, &IID_IDispatchEx, (void**)&dispex);
    EXPECT_HR(hr, S_OK);
    hr = IDispatchEx_QueryInterface(dispex, &IID_IUnknown, (void**)&unk);
    test_obj_dispex(unk);
    IUnknown_Release(unk);
    IDispatchEx_Release(dispex);

    IMXAttributes_Release(mxattr);
}
