
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IHTMLDocument2 ;


 int CHECK_CALLED (int ) ;
 int CreateInstance ;
 int Invoke_READYSTATE ;
 int Invoke_SCRIPTCALL ;
 int Invoke_SECURITYCTX ;
 int SET_EXPECT (int ) ;
 int TEST_DISPONLY ;
 int * create_doc (int ) ;
 int init_test (int ) ;
 int object_ax_str ;
 int release_doc (int *) ;

__attribute__((used)) static void test_nooleobj_ax(void)
{
    IHTMLDocument2 *doc;

    init_test(TEST_DISPONLY);

    SET_EXPECT(CreateInstance);
    SET_EXPECT(Invoke_READYSTATE);
    SET_EXPECT(Invoke_SECURITYCTX);
    SET_EXPECT(Invoke_SCRIPTCALL);

    doc = create_doc(object_ax_str);

    CHECK_CALLED(CreateInstance);
    CHECK_CALLED(Invoke_READYSTATE);
    CHECK_CALLED(Invoke_SECURITYCTX);
    CHECK_CALLED(Invoke_SCRIPTCALL);

    release_doc(doc);
}
