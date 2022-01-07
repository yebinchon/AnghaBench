
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * sa_spill; int sa_bonus; } ;
typedef TYPE_1__ sa_handle_t ;


 int SA_SPILL ;
 int VERIFY (int) ;
 int dmu_spill_hold_existing (int ,int *,int **) ;
 scalar_t__ sa_build_index (TYPE_1__*,int ) ;

__attribute__((used)) static int
sa_get_spill(sa_handle_t *hdl)
{
 int rc;
 if (hdl->sa_spill == ((void*)0)) {
  if ((rc = dmu_spill_hold_existing(hdl->sa_bonus, ((void*)0),
      &hdl->sa_spill)) == 0)
   VERIFY(0 == sa_build_index(hdl, SA_SPILL));
 } else {
  rc = 0;
 }

 return (rc);
}
