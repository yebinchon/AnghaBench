
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timestamps_filter_s {int sequence; scalar_t__ contiguous_last; scalar_t__ sequence_offset; int mva; } ;


 int mva_init (int *) ;

__attribute__((used)) static void timestamps_filter_init(struct timestamps_filter_s *tf)
{
    mva_init(&tf->mva);
    tf->sequence_offset = 0;
    tf->contiguous_last = 0;
    tf->sequence = -1;
}
