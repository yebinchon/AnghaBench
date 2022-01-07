
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RECT ;
typedef int MYSTRUCT ;
typedef int IWidget ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;


 int EqualRect (int *,int *) ;
 scalar_t__ IWidget_mystruct (int *,int ,int *,int *,int *) ;
 scalar_t__ IWidget_mystruct_ptr_ptr (int *,int **) ;
 scalar_t__ IWidget_rect (int *,int ,int *,int *,int *) ;
 scalar_t__ IWidget_thin_struct (int *,int ) ;
 scalar_t__ S_OK ;
 int memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int ok (int,char*,...) ;
 int test_mystruct1 ;
 int test_mystruct2 ;
 int test_mystruct3 ;
 int test_mystruct4 ;
 int test_mystruct5 ;
 int test_mystruct7 ;
 int test_rect1 ;
 int test_rect2 ;
 int test_rect3 ;
 int test_rect4 ;
 int test_rect5 ;
 int test_rect7 ;
 int test_thin_struct ;

__attribute__((used)) static void test_marshal_struct(IWidget *widget, IDispatch *disp)
{
    MYSTRUCT out, in_ptr, in_out, *in_ptr_ptr;
    RECT rect_out, rect_in_ptr, rect_in_out;
    HRESULT hr;

    memcpy(&out, &test_mystruct2, sizeof(MYSTRUCT));
    memcpy(&in_ptr, &test_mystruct3, sizeof(MYSTRUCT));
    memcpy(&in_out, &test_mystruct4, sizeof(MYSTRUCT));
    hr = IWidget_mystruct(widget, test_mystruct1, &out, &in_ptr, &in_out);
    ok(hr == S_OK, "Got hr %#x.\n", hr);
    ok(!memcmp(&out, &test_mystruct5, sizeof(MYSTRUCT)), "Structs didn't match.\n");
    ok(!memcmp(&in_ptr, &test_mystruct3, sizeof(MYSTRUCT)), "Structs didn't match.\n");
    ok(!memcmp(&in_out, &test_mystruct7, sizeof(MYSTRUCT)), "Structs didn't match.\n");

    memcpy(&in_ptr, &test_mystruct1, sizeof(MYSTRUCT));
    in_ptr_ptr = &in_ptr;
    hr = IWidget_mystruct_ptr_ptr(widget, &in_ptr_ptr);
    ok(hr == S_OK, "Got hr %#x.\n", hr);



    hr = IWidget_thin_struct(widget, test_thin_struct);
    ok(hr == S_OK, "Got hr %#x.\n", hr);



    rect_out = test_rect2;
    rect_in_ptr = test_rect3;
    rect_in_out = test_rect4;
    hr = IWidget_rect(widget, test_rect1, &rect_out, &rect_in_ptr, &rect_in_out);
    ok(hr == S_OK, "Got hr %#x.\n", hr);
    ok(EqualRect(&rect_out, &test_rect5), "Rects didn't match.\n");
    ok(EqualRect(&rect_in_ptr, &test_rect3), "Rects didn't match.\n");
    ok(EqualRect(&rect_in_out, &test_rect7), "Rects didn't match.\n");
}
