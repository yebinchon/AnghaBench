
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SAFEARRAY ;
typedef int IWidget ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IWidget_safearray (int *,int *,int **,int **,int **) ;
 scalar_t__ S_OK ;
 int SafeArrayDestroy (int *) ;
 int check_safearray (int *,int) ;
 int * make_safearray (int) ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static void test_marshal_safearray(IWidget *widget, IDispatch *disp)
{
    SAFEARRAY *in, *out, *out2, *in_ptr, *in_out;
    HRESULT hr;

    in = make_safearray(3);
    out = out2 = make_safearray(5);
    in_ptr = make_safearray(7);
    in_out = make_safearray(9);
    hr = IWidget_safearray(widget, in, &out, &in_ptr, &in_out);
    ok(hr == S_OK, "Got hr %#x.\n", hr);
    check_safearray(in, 3);
    check_safearray(out, 4);
    check_safearray(out2, 5);
    check_safearray(in_ptr, 7);
    check_safearray(in_out, 6);

    SafeArrayDestroy(in);
    SafeArrayDestroy(out);
    SafeArrayDestroy(out2);
    SafeArrayDestroy(in_ptr);
    SafeArrayDestroy(in_out);
}
