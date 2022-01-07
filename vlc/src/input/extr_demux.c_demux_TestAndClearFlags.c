
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int demux_t ;


 int DEMUX_TEST_AND_CLEAR_FLAGS ;
 scalar_t__ demux_Control (int *,int ,unsigned int*) ;

unsigned demux_TestAndClearFlags( demux_t *p_demux, unsigned flags )
{
    unsigned update = flags;

    if (demux_Control( p_demux, DEMUX_TEST_AND_CLEAR_FLAGS, &update))
        return 0;
    return update;
}
