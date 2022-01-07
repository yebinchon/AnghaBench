
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t size; int member_2; int member_1; int const* member_0; } ;
typedef TYPE_1__ ZSTD_inBuffer ;
typedef int FUZZ_dataProducer_t ;


 int FUZZ_ASSERT (int) ;
 size_t FUZZ_dataProducer_uint32Range (int *,int,size_t) ;

__attribute__((used)) static ZSTD_inBuffer makeInBuffer(const uint8_t **src, size_t *size,
                                  FUZZ_dataProducer_t *producer)
{
    ZSTD_inBuffer buffer = { *src, 0, 0 };

    FUZZ_ASSERT(*size > 0);
    buffer.size = (FUZZ_dataProducer_uint32Range(producer, 1, *size));
    FUZZ_ASSERT(buffer.size <= *size);
    *src += buffer.size;
    *size -= buffer.size;

    return buffer;
}
