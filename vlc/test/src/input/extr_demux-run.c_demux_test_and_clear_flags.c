
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;


 int DEMUX_TEST_AND_CLEAR_FLAGS ;
 scalar_t__ demux_Control (int *,int ,unsigned int*) ;

__attribute__((used)) static unsigned demux_test_and_clear_flags(demux_t *demux, unsigned flags)
{
    unsigned update = flags;
    if (demux_Control(demux, DEMUX_TEST_AND_CLEAR_FLAGS, &update))
        return 0;
    return update;
}
