
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef int FormData_continuous_agg ;
typedef TYPE_1__ ContinuousAgg ;


 int memcpy (int *,int *,int) ;

__attribute__((used)) static void
continuous_agg_init(ContinuousAgg *cagg, FormData_continuous_agg *fd)
{
 memcpy(&cagg->data, fd, sizeof(cagg->data));
}
