
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
typedef int FUZZ_dataProducer_t ;


 int FUZZ_ASSERT (int) ;
 scalar_t__ FUZZ_dataProducer_uint32Range (int *,int,scalar_t__) ;
 int buf ;
 scalar_t__ kBufSize ;

__attribute__((used)) static ZSTD_outBuffer makeOutBuffer(FUZZ_dataProducer_t *producer)
{
  ZSTD_outBuffer buffer = { buf, 0, 0 };

  buffer.size = (FUZZ_dataProducer_uint32Range(producer, 1, kBufSize));
  FUZZ_ASSERT(buffer.size <= kBufSize);

  return buffer;
}
