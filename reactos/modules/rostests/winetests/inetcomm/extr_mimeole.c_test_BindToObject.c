
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int IMimeMessage ;
typedef int IMimeBody ;
typedef int HRESULT ;


 int HBODY_ROOT ;
 int IID_IMimeBody ;
 int IMimeBody_Release (int *) ;
 int IMimeMessage_BindToObject (int *,int ,int *,void**) ;
 int IMimeMessage_CountBodies (int *,int ,int ,int*) ;
 int IMimeMessage_Release (int *) ;
 int MimeOleCreateMessage (int *,int **) ;
 int S_OK ;
 int TRUE ;
 int ok (int,char*,int) ;

__attribute__((used)) static void test_BindToObject(void)
{
    HRESULT hr;
    IMimeMessage *msg;
    IMimeBody *body;
    ULONG count;

    hr = MimeOleCreateMessage(((void*)0), &msg);
    ok(hr == S_OK, "ret %08x\n", hr);

    hr = IMimeMessage_CountBodies(msg, HBODY_ROOT, TRUE, &count);
    ok(hr == S_OK, "ret %08x\n", hr);
    ok(count == 1, "got %d\n", count);

    hr = IMimeMessage_BindToObject(msg, HBODY_ROOT, &IID_IMimeBody, (void**)&body);
    ok(hr == S_OK, "ret %08x\n", hr);
    IMimeBody_Release(body);

    IMimeMessage_Release(msg);
}
