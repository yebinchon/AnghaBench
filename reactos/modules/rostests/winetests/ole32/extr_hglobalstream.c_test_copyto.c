
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int szHello ;
typedef int buffer ;
typedef int ULONG ;
struct TYPE_6__ {int QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
typedef int LARGE_INTEGER ;
typedef int IStream ;
typedef int HRESULT ;


 int CreateStreamOnHGlobal (int *,int ,int **) ;
 int IStream_Clone (int *,int **) ;
 int IStream_CopyTo (int *,int *,TYPE_1__,TYPE_1__*,TYPE_1__*) ;
 int IStream_Read (int *,char*,int,int *) ;
 int IStream_Release (int *) ;
 int IStream_Seek (int *,int const,int ,TYPE_1__*) ;
 int IStream_Write (int *,char const*,int,int*) ;
 int STREAM_SEEK_CUR ;
 int STREAM_SEEK_SET ;
 int TRUE ;
 int Test_Stream ;
 char** expected_method_list ;
 int ok (int,char*,...) ;
 int ok_ole_success (int ,char*) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static void test_copyto(void)
{
    IStream *pStream, *pStream2;
    HRESULT hr = CreateStreamOnHGlobal(((void*)0), TRUE, &pStream);
    static const char szHello[] = "Hello";
    ULARGE_INTEGER cb;
    static const char *methods_copyto[] =
    {
        "TestStream_Write",
        ((void*)0)
    };
    ULONG written;
    ULARGE_INTEGER ullRead;
    ULARGE_INTEGER ullWritten;
    ULARGE_INTEGER libNewPosition;
    static const LARGE_INTEGER llZero;
    char buffer[15];

    ok_ole_success(hr, "CreateStreamOnHGlobal");

    expected_method_list = methods_copyto;

    hr = IStream_Write(pStream, szHello, sizeof(szHello), &written);
    ok_ole_success(hr, "IStream_Write");
    ok(written == sizeof(szHello), "only %d bytes written\n", written);

    hr = IStream_Seek(pStream, llZero, STREAM_SEEK_SET, ((void*)0));
    ok_ole_success(hr, "IStream_Seek");

    cb.QuadPart = sizeof(szHello);
    hr = IStream_CopyTo(pStream, &Test_Stream, cb, &ullRead, &ullWritten);
    ok(ullWritten.QuadPart == 5, "ullWritten was %d instead\n", (ULONG)ullWritten.QuadPart);
    ok(ullRead.QuadPart == sizeof(szHello), "only %d bytes read\n", (ULONG)ullRead.QuadPart);
    ok_ole_success(hr, "IStream_CopyTo");

    ok(!*expected_method_list, "Method sequence starting from %s not called\n", *expected_method_list);

    hr = IStream_Clone(pStream, &pStream2);
    ok_ole_success(hr, "IStream_Clone");

    hr = IStream_Seek(pStream2, llZero, STREAM_SEEK_CUR, &libNewPosition);
    ok_ole_success(hr, "IStream_Seek");
    ok(libNewPosition.QuadPart == sizeof(szHello), "libNewPosition wasn't set correctly for the cloned stream\n");

    hr = IStream_Seek(pStream2, llZero, STREAM_SEEK_SET, ((void*)0));
    ok_ole_success(hr, "IStream_Seek");

    hr = IStream_Read(pStream2, buffer, sizeof(buffer), ((void*)0));
    ok_ole_success(hr, "IStream_Read");
    ok(!strcmp(buffer, szHello), "read data \"%s\" didn't match originally written data\n", buffer);

    IStream_Release(pStream2);
    IStream_Release(pStream);
}
