
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* pszVal; } ;
struct TYPE_8__ {TYPE_1__ u; void* vt; } ;
typedef TYPE_2__ PROPVARIANT ;
typedef int IMimeMessage ;
typedef int IMimeBody ;
typedef scalar_t__ HRESULT ;


 void* CoTaskMemAlloc (scalar_t__) ;
 int HBODY_ROOT ;
 int IID_IMimeBody ;
 scalar_t__ IMimeBody_DeleteProp (int *,char*) ;
 scalar_t__ IMimeBody_GetProp (int *,char*,int ,TYPE_2__*) ;
 int IMimeBody_Release (int *) ;
 scalar_t__ IMimeBody_SetProp (int *,char*,int ,TYPE_2__*) ;
 scalar_t__ IMimeMessage_BindToObject (int *,int ,int *,void**) ;
 int IMimeMessage_Release (int *) ;
 scalar_t__ MIME_E_NOT_FOUND ;
 scalar_t__ MimeOleCreateMessage (int *,int **) ;
 char* PIDTOSTR (int ) ;
 int PID_HDR_SUBJECT ;
 int PropVariantClear (TYPE_2__*) ;
 int PropVariantInit (TYPE_2__*) ;
 scalar_t__ S_OK ;
 void* VT_LPSTR ;
 int ok (int,char*,scalar_t__) ;
 int strcpy (void*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void test_BodyDeleteProp(void)
{
    static const char topic[] = "wine topic";
    HRESULT hr;
    IMimeMessage *msg;
    IMimeBody *body;
    PROPVARIANT prop;

    hr = MimeOleCreateMessage(((void*)0), &msg);
    ok(hr == S_OK, "ret %08x\n", hr);

    PropVariantInit(&prop);

    hr = IMimeMessage_BindToObject(msg, HBODY_ROOT, &IID_IMimeBody, (void**)&body);
    ok(hr == S_OK, "ret %08x\n", hr);

    hr = IMimeBody_DeleteProp(body, "Subject");
    ok(hr == MIME_E_NOT_FOUND, "ret %08x\n", hr);

    hr = IMimeBody_DeleteProp(body, PIDTOSTR(PID_HDR_SUBJECT));
    ok(hr == MIME_E_NOT_FOUND, "ret %08x\n", hr);

    prop.vt = VT_LPSTR;
    prop.u.pszVal = CoTaskMemAlloc(strlen(topic)+1);
    strcpy(prop.u.pszVal, topic);
    hr = IMimeBody_SetProp(body, "Subject", 0, &prop);
    ok(hr == S_OK, "ret %08x\n", hr);
    PropVariantClear(&prop);

    hr = IMimeBody_DeleteProp(body, "Subject");
    ok(hr == S_OK, "ret %08x\n", hr);

    hr = IMimeBody_GetProp(body, "Subject", 0, &prop);
    ok(hr == MIME_E_NOT_FOUND, "ret %08x\n", hr);

    prop.vt = VT_LPSTR;
    prop.u.pszVal = CoTaskMemAlloc(strlen(topic)+1);
    strcpy(prop.u.pszVal, topic);
    hr = IMimeBody_SetProp(body, PIDTOSTR(PID_HDR_SUBJECT), 0, &prop);
    ok(hr == S_OK, "ret %08x\n", hr);
    PropVariantClear(&prop);

    hr = IMimeBody_DeleteProp(body, PIDTOSTR(PID_HDR_SUBJECT));
    ok(hr == S_OK, "ret %08x\n", hr);

    hr = IMimeBody_GetProp(body, PIDTOSTR(PID_HDR_SUBJECT), 0, &prop);
    ok(hr == MIME_E_NOT_FOUND, "ret %08x\n", hr);

    IMimeBody_Release(body);
    IMimeMessage_Release(msg);
}
