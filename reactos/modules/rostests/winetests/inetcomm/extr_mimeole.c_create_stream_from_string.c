
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ QuadPart; } ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;


 scalar_t__ CreateStreamOnHGlobal (int *,int ,int **) ;
 scalar_t__ IStream_Seek (int *,TYPE_1__,int ,int *) ;
 scalar_t__ IStream_Write (int *,char const*,int ,int *) ;
 int STREAM_SEEK_SET ;
 scalar_t__ S_OK ;
 int TRUE ;
 int ok (int,char*,scalar_t__) ;
 int strlen (char const*) ;

__attribute__((used)) static IStream *create_stream_from_string(const char *data)
{
    LARGE_INTEGER off;
    IStream *stream;
    HRESULT hr;

    hr = CreateStreamOnHGlobal(((void*)0), TRUE, &stream);
    ok(hr == S_OK, "ret %08x\n", hr);

    hr = IStream_Write(stream, data, strlen(data), ((void*)0));
    ok(hr == S_OK, "Write failed: %08x\n", hr);

    off.QuadPart = 0;
    hr = IStream_Seek(stream, off, STREAM_SEEK_SET, ((void*)0));
    ok(hr == S_OK, "Seek failed: %08x\n", hr);

    return stream;
}
