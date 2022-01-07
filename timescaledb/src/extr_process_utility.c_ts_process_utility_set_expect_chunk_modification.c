
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int expect_chunk_modification ;

extern void
ts_process_utility_set_expect_chunk_modification(bool expect)
{
 expect_chunk_modification = expect;
}
