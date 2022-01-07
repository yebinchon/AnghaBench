
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_5__ {int QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
struct TYPE_6__ {scalar_t__ QuadPart; } ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int IStream ;


 int CreateStreamOnHGlobal (int *,int ,int **) ;
 int IStream_Seek (int *,TYPE_2__,int ,int *) ;
 int IStream_SetSize (int *,TYPE_1__) ;
 int IStream_Write (int *,char const*,int,int *) ;
 int STREAM_SEEK_SET ;
 int TRUE ;
 int strlen (char const*) ;

__attribute__((used)) static IStream *create_test_stream(const char *data, int len)
{
     ULARGE_INTEGER size;
     LARGE_INTEGER pos;
     IStream *stream;
     ULONG written;

     if (len == -1) len = strlen(data);
     CreateStreamOnHGlobal(((void*)0), TRUE, &stream);
     size.QuadPart = len;
     IStream_SetSize(stream, size);
     IStream_Write(stream, data, len, &written);
     pos.QuadPart = 0;
     IStream_Seek(stream, pos, STREAM_SEEK_SET, ((void*)0));

     return stream;
}
