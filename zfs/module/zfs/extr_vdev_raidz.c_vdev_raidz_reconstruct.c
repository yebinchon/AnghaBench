
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int rm_firstdatacol; int rm_cols; TYPE_1__* rm_col; } ;
typedef TYPE_2__ raidz_map_t ;
struct TYPE_9__ {scalar_t__ rc_error; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int RAIDZ_ORIGINAL_IMPL ;
 int VDEV_RAIDZ_MAXPARITY ;
 size_t VDEV_RAIDZ_P ;
 size_t VDEV_RAIDZ_Q ;
 int vdev_raidz_math_reconstruct (TYPE_2__*,int*,int*,int) ;
 int vdev_raidz_reconstruct_general (TYPE_2__*,int*,int) ;
 int vdev_raidz_reconstruct_p (TYPE_2__*,int*,int) ;
 int vdev_raidz_reconstruct_pq (TYPE_2__*,int*,int) ;
 int vdev_raidz_reconstruct_q (TYPE_2__*,int*,int) ;

int
vdev_raidz_reconstruct(raidz_map_t *rm, const int *t, int nt)
{
 int tgts[VDEV_RAIDZ_MAXPARITY], *dt;
 int ntgts;
 int i, c, ret;
 int code;
 int nbadparity, nbaddata;
 int parity_valid[VDEV_RAIDZ_MAXPARITY];




 for (i = 1; i < nt; i++) {
  ASSERT(t[i] > t[i - 1]);
 }

 nbadparity = rm->rm_firstdatacol;
 nbaddata = rm->rm_cols - nbadparity;
 ntgts = 0;
 for (i = 0, c = 0; c < rm->rm_cols; c++) {
  if (c < rm->rm_firstdatacol)
   parity_valid[c] = B_FALSE;

  if (i < nt && c == t[i]) {
   tgts[ntgts++] = c;
   i++;
  } else if (rm->rm_col[c].rc_error != 0) {
   tgts[ntgts++] = c;
  } else if (c >= rm->rm_firstdatacol) {
   nbaddata--;
  } else {
   parity_valid[c] = B_TRUE;
   nbadparity--;
  }
 }

 ASSERT(ntgts >= nt);
 ASSERT(nbaddata >= 0);
 ASSERT(nbaddata + nbadparity == ntgts);

 dt = &tgts[nbadparity];


 ret = vdev_raidz_math_reconstruct(rm, parity_valid, dt, nbaddata);
 if (ret != RAIDZ_ORIGINAL_IMPL)
  return (ret);




 switch (nbaddata) {
 case 1:
  if (parity_valid[VDEV_RAIDZ_P])
   return (vdev_raidz_reconstruct_p(rm, dt, 1));

  ASSERT(rm->rm_firstdatacol > 1);

  if (parity_valid[VDEV_RAIDZ_Q])
   return (vdev_raidz_reconstruct_q(rm, dt, 1));

  ASSERT(rm->rm_firstdatacol > 2);
  break;

 case 2:
  ASSERT(rm->rm_firstdatacol > 1);

  if (parity_valid[VDEV_RAIDZ_P] &&
      parity_valid[VDEV_RAIDZ_Q])
   return (vdev_raidz_reconstruct_pq(rm, dt, 2));

  ASSERT(rm->rm_firstdatacol > 2);

  break;
 }

 code = vdev_raidz_reconstruct_general(rm, tgts, ntgts);
 ASSERT(code < (1 << VDEV_RAIDZ_MAXPARITY));
 ASSERT(code > 0);
 return (code);
}
