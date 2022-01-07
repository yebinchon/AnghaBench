
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memstream {int stream; } ;


 int IStream_Release (int ) ;

__attribute__((used)) static void cleanup_memstream(struct memstream *stream)
{
    IStream_Release(stream->stream);
}
