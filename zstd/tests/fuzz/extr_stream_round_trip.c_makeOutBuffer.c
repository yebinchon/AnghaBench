
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t size; int member_2; int member_1; int * member_0; } ;
typedef TYPE_1__ ZSTD_outBuffer ;
typedef int FUZZ_dataProducer_t ;


 int FUZZ_ASSERT (int) ;
 size_t FUZZ_dataProducer_uint32Range (int *,int,size_t) ;

__attribute__((used)) static ZSTD_outBuffer makeOutBuffer(uint8_t *dst, size_t capacity,
                                    FUZZ_dataProducer_t *producer)
{
    ZSTD_outBuffer buffer = { dst, 0, 0 };

    FUZZ_ASSERT(capacity > 0);
    buffer.size = (FUZZ_dataProducer_uint32Range(producer, 1, capacity));
    FUZZ_ASSERT(buffer.size <= capacity);

    return buffer;
}
