
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IVBSAXAttributes ;
typedef int ISAXAttributes ;
typedef int IMXAttributes ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_SAXAttributes ;
 int CoCreateInstance (int *,int *,int ,int *,void**) ;
 int EXPECT_HR (int ,int ) ;
 int EXPECT_REF (int *,int) ;
 int IID_IMXAttributes ;
 int IID_ISAXAttributes ;
 int IID_IVBSAXAttributes ;
 int IMXAttributes_QueryInterface (int *,int *,void**) ;
 int IMXAttributes_Release (int *) ;
 int ISAXAttributes_QueryInterface (int *,int *,void**) ;
 int ISAXAttributes_Release (int *) ;
 int IVBSAXAttributes_Release (int *) ;
 int S_OK ;

__attribute__((used)) static void test_mxattr_qi(void)
{
    IVBSAXAttributes *vbsaxattr, *vbsaxattr2;
    ISAXAttributes *saxattr;
    IMXAttributes *mxattr;
    HRESULT hr;

    hr = CoCreateInstance(&CLSID_SAXAttributes, ((void*)0), CLSCTX_INPROC_SERVER,
            &IID_IMXAttributes, (void**)&mxattr);
    EXPECT_HR(hr, S_OK);

    EXPECT_REF(mxattr, 1);
    hr = IMXAttributes_QueryInterface(mxattr, &IID_ISAXAttributes, (void**)&saxattr);
    EXPECT_HR(hr, S_OK);

    EXPECT_REF(mxattr, 2);
    EXPECT_REF(saxattr, 2);

    hr = IMXAttributes_QueryInterface(mxattr, &IID_IVBSAXAttributes, (void**)&vbsaxattr);
    EXPECT_HR(hr, S_OK);

    EXPECT_REF(vbsaxattr, 3);
    EXPECT_REF(mxattr, 3);
    EXPECT_REF(saxattr, 3);

    hr = ISAXAttributes_QueryInterface(saxattr, &IID_IVBSAXAttributes, (void**)&vbsaxattr2);
    EXPECT_HR(hr, S_OK);

    EXPECT_REF(vbsaxattr, 4);
    EXPECT_REF(mxattr, 4);
    EXPECT_REF(saxattr, 4);

    IMXAttributes_Release(mxattr);
    ISAXAttributes_Release(saxattr);
    IVBSAXAttributes_Release(vbsaxattr);
    IVBSAXAttributes_Release(vbsaxattr2);
}
