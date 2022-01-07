
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
struct TYPE_6__ {scalar_t__ QuadPart; } ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int IStream ;


 int CoReleaseMarshalData (int *) ;
 int IStream_Seek (int *,TYPE_2__,int ,int *) ;
 int IStream_SetSize (int *,TYPE_1__) ;
 int STREAM_SEEK_SET ;

__attribute__((used)) static inline void release_marshal_data(IStream *stm)
{
    LARGE_INTEGER pos;
    ULARGE_INTEGER size;
    pos.QuadPart = size.QuadPart = 0;

    IStream_Seek(stm, pos, STREAM_SEEK_SET, ((void*)0));
    CoReleaseMarshalData(stm);
    IStream_Seek(stm, pos, STREAM_SEEK_SET, ((void*)0));
    IStream_SetSize(stm, size);
}
