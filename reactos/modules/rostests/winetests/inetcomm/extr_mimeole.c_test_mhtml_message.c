
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int IStream ;
typedef int IMimeMessage ;
typedef int IMimeBody ;
typedef int HRESULT ;
typedef int HBODY ;


 int CoTaskMemFree (int *) ;
 int HBODY_ROOT ;
 int IET_BASE64 ;
 int IET_BINARY ;
 int IET_QP ;
 int IID_IMimeBody ;
 int IMimeBody_GetData (int *,int ,int **) ;
 int IMimeBody_Release (int *) ;
 int IMimeMessage_BindToObject (int *,int ,int *,void**) ;
 int IMimeMessage_CountBodies (int *,int ,int ,int*) ;
 int IMimeMessage_GetAttachments (int *,int*,int **) ;
 int IMimeMessage_Load (int *,int *) ;
 int IMimeMessage_Release (int *) ;
 int IStream_Release (int *) ;
 int MimeOleCreateMessage (int *,int **) ;
 int S_OK ;
 int TRUE ;
 int * create_stream_from_string (int ) ;
 int mhtml_page1 ;
 int ok (int,char*,int) ;
 int test_current_encoding (int *,int ) ;
 int test_stream_read (int *,int,char*,int) ;

__attribute__((used)) static void test_mhtml_message(void)
{
    IMimeMessage *mime_message;
    IMimeBody *mime_body;
    HBODY *body_list;
    IStream *stream;
    ULONG count;
    HRESULT hres;

    hres = MimeOleCreateMessage(((void*)0), &mime_message);
    ok(hres == S_OK, "MimeOleCreateMessage failed: %08x\n", hres);

    stream = create_stream_from_string(mhtml_page1);
    hres = IMimeMessage_Load(mime_message, stream);
    IStream_Release(stream);
    ok(hres == S_OK, "Load failed: %08x\n", hres);

    hres = IMimeMessage_CountBodies(mime_message, HBODY_ROOT, TRUE, &count);
    ok(hres == S_OK, "CountBodies failed: %08x\n", hres);
    ok(count == 3, "got %d\n", count);

    hres = IMimeMessage_GetAttachments(mime_message, &count, &body_list);
    ok(hres == S_OK, "GetAttachments failed: %08x\n", hres);
    ok(count == 2, "count = %u\n", count);

    hres = IMimeMessage_BindToObject(mime_message, body_list[0], &IID_IMimeBody, (void**)&mime_body);
    ok(hres == S_OK, "BindToObject failed: %08x\n", hres);

    hres = IMimeBody_GetData(mime_body, IET_BINARY, &stream);
    ok(hres == S_OK, "GetData failed: %08x\n", hres);
    test_stream_read(stream, S_OK, "<HTML></HTML>", -1);
    IStream_Release(stream);

    test_current_encoding(mime_body, IET_QP);

    IMimeBody_Release(mime_body);

    hres = IMimeMessage_BindToObject(mime_message, body_list[1], &IID_IMimeBody, (void**)&mime_body);
    ok(hres == S_OK, "BindToObject failed: %08x\n", hres);

    test_current_encoding(mime_body, IET_BASE64);

    hres = IMimeBody_GetData(mime_body, IET_BINARY, &stream);
    ok(hres == S_OK, "GetData failed: %08x\n", hres);
    test_stream_read(stream, S_OK, "Test", -1);
    IStream_Release(stream);

    IMimeBody_Release(mime_body);

    CoTaskMemFree(body_list);

    IMimeMessage_Release(mime_message);
}
