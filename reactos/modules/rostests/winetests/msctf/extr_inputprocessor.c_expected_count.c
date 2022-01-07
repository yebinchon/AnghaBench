
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SINK_EXPECTED_COUNT_MASK ;

__attribute__((used)) static inline int expected_count(int *sink)
{
    return (*sink & SINK_EXPECTED_COUNT_MASK)>>16;
}
