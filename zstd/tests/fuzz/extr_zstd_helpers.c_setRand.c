
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_cParameter ;
typedef int ZSTD_CCtx ;
typedef int FUZZ_dataProducer_t ;


 unsigned int FUZZ_dataProducer_uint32Range (int *,unsigned int,unsigned int) ;
 int set (int *,int ,unsigned int const) ;

__attribute__((used)) static void setRand(ZSTD_CCtx *cctx, ZSTD_cParameter param, unsigned min,
                    unsigned max, FUZZ_dataProducer_t *producer) {
    unsigned const value = FUZZ_dataProducer_uint32Range(producer, min, max);
    set(cctx, param, value);
}
