
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int multilist_t ;
struct TYPE_2__ {unsigned int ms_id; } ;
typedef TYPE_1__ metaslab_t ;


 unsigned int multilist_get_num_sublists (int *) ;

__attribute__((used)) static unsigned int
metaslab_idx_func(multilist_t *ml, void *arg)
{
 metaslab_t *msp = arg;
 return (msp->ms_id % multilist_get_num_sublists(ml));
}
