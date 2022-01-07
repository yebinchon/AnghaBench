
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t k; } ;
typedef TYPE_1__ ZDICT_random_params_t ;
typedef size_t U32 ;
struct TYPE_6__ {unsigned int begin; unsigned int end; } ;
typedef TYPE_2__ RANDOM_segment_t ;


 size_t const rand () ;

__attribute__((used)) static RANDOM_segment_t RANDOM_selectSegment(const size_t totalSamplesSize,
                                            ZDICT_random_params_t parameters) {
    const U32 k = parameters.k;
    RANDOM_segment_t segment;
    unsigned index;


    index = rand()%(totalSamplesSize - k + 1);


    segment.begin = index;
    segment.end = index + k - 1;

    return segment;
}
