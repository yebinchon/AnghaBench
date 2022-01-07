
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int filter_t ;


 int filter_Flush (int * const) ;

__attribute__((used)) static void aout_FiltersPipelineFlush(filter_t *const *filters,
                                      unsigned count)
{
    for (unsigned i = 0; i < count; i++)
        filter_Flush (filters[i]);
}
