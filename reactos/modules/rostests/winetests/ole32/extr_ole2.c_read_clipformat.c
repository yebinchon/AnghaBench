
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int length ;
typedef int clipformat ;
typedef int ULONG ;
typedef int IStream ;
typedef scalar_t__ HRESULT ;


 scalar_t__ IStream_Read (int *,int*,int,int*) ;
 scalar_t__ S_OK ;
 int ok (int ,char*,int) ;

__attribute__((used)) static int read_clipformat(IStream *stream)
{
    HRESULT hr;
    ULONG bytes;
    int length, clipformat = -2;

    hr = IStream_Read(stream, &length, sizeof(length), &bytes);
    if (hr != S_OK || bytes != sizeof(length))
        return -2;
    if (length == 0)
        return 0;
    if (length == -1)
    {
        hr = IStream_Read(stream, &clipformat, sizeof(clipformat), &bytes);
        if (hr != S_OK || bytes != sizeof(clipformat))
            return -2;
    }
    else
        ok(0, "unhandled clipformat length %d\n", length);

    return clipformat;
}
