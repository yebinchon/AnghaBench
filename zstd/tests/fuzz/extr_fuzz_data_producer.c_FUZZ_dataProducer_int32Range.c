
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;
typedef int FUZZ_dataProducer_t ;


 int FUZZ_ASSERT (int) ;
 scalar_t__ FUZZ_dataProducer_uint32Range (int *,scalar_t__,scalar_t__) ;

int32_t FUZZ_dataProducer_int32Range(FUZZ_dataProducer_t *producer,
                                    int32_t min, int32_t max)
{
    FUZZ_ASSERT(min <= max);

    if (min < 0)
      return (int)FUZZ_dataProducer_uint32Range(producer, 0, max - min) + min;

    return FUZZ_dataProducer_uint32Range(producer, min, max);
}
