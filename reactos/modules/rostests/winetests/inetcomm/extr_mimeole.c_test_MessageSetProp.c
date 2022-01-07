
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_7__ {scalar_t__ pszVal; int pwszVal; } ;
struct TYPE_8__ {scalar_t__ vt; TYPE_1__ u; } ;
typedef TYPE_2__ PROPVARIANT ;
typedef int IMimeMessage ;
typedef int IMimeBody ;
typedef scalar_t__ HRESULT ;


 void* CoTaskMemAlloc (scalar_t__) ;
 scalar_t__ E_INVALIDARG ;
 int HBODY_ROOT ;
 int IID_IMimeBody ;
 scalar_t__ IMimeBody_GetProp (int *,char*,int ,TYPE_2__*) ;
 int IMimeBody_Release (int *) ;
 scalar_t__ IMimeBody_SetProp (int *,char*,int ,TYPE_2__*) ;
 scalar_t__ IMimeMessage_BindToObject (int *,int ,int *,void**) ;
 int IMimeMessage_Release (int *) ;
 scalar_t__ MIME_E_NOT_FOUND ;
 scalar_t__ MimeOleCreateMessage (int *,int **) ;
 char* PIDTOSTR (int) ;
 int PID_HDR_SUBJECT ;
 int PID_HDR_TO ;
 int PropVariantClear (TYPE_2__*) ;
 int PropVariantInit (TYPE_2__*) ;
 scalar_t__ S_OK ;
 scalar_t__ VT_LPSTR ;
 scalar_t__ VT_LPWSTR ;
 int lstrcmpW (int ,char const*) ;
 int ok (int,char*,scalar_t__) ;
 int strcmp (scalar_t__,char const*) ;
 int strcpy (scalar_t__,char const*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ wine_dbgstr_w (int ) ;

__attribute__((used)) static void test_MessageSetProp(void)
{
    static const char topic[] = "wine topic";
    static const WCHAR topicW[] = {'w','i','n','e',' ','t','o','p','i','c',0};
    HRESULT hr;
    IMimeMessage *msg;
    IMimeBody *body;
    PROPVARIANT prop;

    hr = MimeOleCreateMessage(((void*)0), &msg);
    ok(hr == S_OK, "ret %08x\n", hr);

    PropVariantInit(&prop);

    hr = IMimeMessage_BindToObject(msg, HBODY_ROOT, &IID_IMimeBody, (void**)&body);
    ok(hr == S_OK, "ret %08x\n", hr);

    hr = IMimeBody_SetProp(body, ((void*)0), 0, &prop);
    ok(hr == E_INVALIDARG, "ret %08x\n", hr);

    hr = IMimeBody_SetProp(body, "Thread-Topic", 0, ((void*)0));
    ok(hr == E_INVALIDARG, "ret %08x\n", hr);

    prop.vt = VT_LPSTR;
    prop.u.pszVal = CoTaskMemAlloc(strlen(topic)+1);
    strcpy(prop.u.pszVal, topic);
    hr = IMimeBody_SetProp(body, "Thread-Topic", 0, &prop);
    ok(hr == S_OK, "ret %08x\n", hr);
    PropVariantClear(&prop);

    hr = IMimeBody_GetProp(body, ((void*)0), 0, &prop);
    ok(hr == E_INVALIDARG, "ret %08x\n", hr);

    hr = IMimeBody_GetProp(body, "Thread-Topic", 0, ((void*)0));
    ok(hr == E_INVALIDARG, "ret %08x\n", hr);

    hr = IMimeBody_GetProp(body, "Wine-Topic", 0, &prop);
    ok(hr == MIME_E_NOT_FOUND, "ret %08x\n", hr);

    prop.vt = VT_LPSTR;
    hr = IMimeBody_GetProp(body, "Thread-Topic", 0, &prop);
    ok(hr == S_OK, "ret %08x\n", hr);
    if(hr == S_OK)
    {
        ok(prop.vt == VT_LPSTR, "type %d\n", prop.vt);
        ok(!strcmp(prop.u.pszVal, topic), "got  %s\n", prop.u.pszVal);
        PropVariantClear(&prop);
    }

    prop.vt = VT_LPSTR;
    prop.u.pszVal = CoTaskMemAlloc(strlen(topic)+1);
    strcpy(prop.u.pszVal, topic);
    hr = IMimeBody_SetProp(body, PIDTOSTR(PID_HDR_SUBJECT), 0, &prop);
    ok(hr == S_OK, "ret %08x\n", hr);
    PropVariantClear(&prop);

    prop.vt = VT_LPSTR;
    hr = IMimeBody_GetProp(body, PIDTOSTR(PID_HDR_SUBJECT), 0, &prop);
    ok(hr == S_OK, "ret %08x\n", hr);
    if(hr == S_OK)
    {
        ok(prop.vt == VT_LPSTR, "type %d\n", prop.vt);
        ok(!strcmp(prop.u.pszVal, topic), "got  %s\n", prop.u.pszVal);
        PropVariantClear(&prop);
    }


    prop.vt = VT_LPSTR;
    hr = IMimeBody_GetProp(body, "Subject", 0, &prop);
    ok(hr == S_OK, "ret %08x\n", hr);
    if(hr == S_OK)
    {
        ok(prop.vt == VT_LPSTR, "type %d\n", prop.vt);
        ok(!strcmp(prop.u.pszVal, topic), "got  %s\n", prop.u.pszVal);
        PropVariantClear(&prop);
    }

    prop.vt = VT_LPWSTR;
    hr = IMimeBody_GetProp(body, "Subject", 0, &prop);
    ok(hr == S_OK, "ret %08x\n", hr);
    if(hr == S_OK)
    {
        ok(prop.vt == VT_LPWSTR, "type %d\n", prop.vt);
        ok(!lstrcmpW(prop.u.pwszVal, topicW), "got %s\n", wine_dbgstr_w(prop.u.pwszVal));
        PropVariantClear(&prop);
    }

    prop.vt = VT_LPSTR;
    prop.u.pszVal = CoTaskMemAlloc(strlen(topic)+1);
    strcpy(prop.u.pszVal, topic);
    hr = IMimeBody_SetProp(body, PIDTOSTR(PID_HDR_TO), 0, &prop);
    ok(hr == S_OK, "ret %08x\n", hr);
    PropVariantClear(&prop);


    prop.vt = VT_LPSTR;
    prop.u.pszVal = CoTaskMemAlloc(strlen(topic)+1);
    strcpy(prop.u.pszVal, topic);
    hr = IMimeBody_SetProp(body, PIDTOSTR(124), 0, &prop);
    ok(hr == MIME_E_NOT_FOUND, "ret %08x\n", hr);
    PropVariantClear(&prop);

    IMimeBody_Release(body);
    IMimeMessage_Release(msg);
}
