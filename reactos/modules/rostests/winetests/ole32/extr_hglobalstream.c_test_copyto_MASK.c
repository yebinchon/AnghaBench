#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  szHello ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int ULONG ;
struct TYPE_6__ {int QuadPart; } ;
typedef  TYPE_1__ ULARGE_INTEGER ;
typedef  int /*<<< orphan*/  LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IStream ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int,int*) ; 
 int /*<<< orphan*/  STREAM_SEEK_CUR ; 
 int /*<<< orphan*/  STREAM_SEEK_SET ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  Test_Stream ; 
 char** expected_method_list ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

__attribute__((used)) static void FUNC10(void)
{
    IStream *pStream, *pStream2;
    HRESULT hr = FUNC0(NULL, TRUE, &pStream);
    static const char szHello[] = "Hello";
    ULARGE_INTEGER cb;
    static const char *methods_copyto[] =
    {
        "TestStream_Write",
        NULL
    };
    ULONG written;
    ULARGE_INTEGER ullRead;
    ULARGE_INTEGER ullWritten;
    ULARGE_INTEGER libNewPosition;
    static const LARGE_INTEGER llZero;
    char buffer[15];

    FUNC8(hr, "CreateStreamOnHGlobal");

    expected_method_list = methods_copyto;

    hr = FUNC6(pStream, szHello, sizeof(szHello), &written);
    FUNC8(hr, "IStream_Write");
    FUNC7(written == sizeof(szHello), "only %d bytes written\n", written);

    hr = FUNC5(pStream, llZero, STREAM_SEEK_SET, NULL);
    FUNC8(hr, "IStream_Seek");

    cb.QuadPart = sizeof(szHello);
    hr = FUNC2(pStream, &Test_Stream, cb, &ullRead, &ullWritten);
    FUNC7(ullWritten.QuadPart == 5, "ullWritten was %d instead\n", (ULONG)ullWritten.QuadPart);
    FUNC7(ullRead.QuadPart == sizeof(szHello), "only %d bytes read\n", (ULONG)ullRead.QuadPart);
    FUNC8(hr, "IStream_CopyTo");

    FUNC7(!*expected_method_list, "Method sequence starting from %s not called\n", *expected_method_list);

    hr = FUNC1(pStream, &pStream2);
    FUNC8(hr, "IStream_Clone");

    hr = FUNC5(pStream2, llZero, STREAM_SEEK_CUR, &libNewPosition);
    FUNC8(hr, "IStream_Seek");
    FUNC7(libNewPosition.QuadPart == sizeof(szHello), "libNewPosition wasn't set correctly for the cloned stream\n");

    hr = FUNC5(pStream2, llZero, STREAM_SEEK_SET, NULL);
    FUNC8(hr, "IStream_Seek");

    hr = FUNC3(pStream2, buffer, sizeof(buffer), NULL);
    FUNC8(hr, "IStream_Read");
    FUNC7(!FUNC9(buffer, szHello), "read data \"%s\" didn't match originally written data\n", buffer);

    FUNC4(pStream2);
    FUNC4(pStream);
}