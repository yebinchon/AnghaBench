
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int rm_cols; TYPE_1__* rm_col; } ;
typedef TYPE_2__ raidz_map_t ;
struct TYPE_4__ {int rc_error; } ;


 int zio_worst_error (int,int ) ;

__attribute__((used)) static int
vdev_raidz_worst_error(raidz_map_t *rm)
{
 int error = 0;

 for (int c = 0; c < rm->rm_cols; c++)
  error = zio_worst_error(error, rm->rm_col[c].rc_error);

 return (error);
}
