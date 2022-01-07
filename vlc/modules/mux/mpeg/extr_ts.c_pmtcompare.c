
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i_pid; } ;
typedef TYPE_1__ pmt_map_t ;



__attribute__((used)) static int pmtcompare( const void *pa, const void *pb )
{
    int id1 = ((pmt_map_t *)pa)->i_pid;
    int id2 = ((pmt_map_t *)pb)->i_pid;

    return id1 - id2;
}
