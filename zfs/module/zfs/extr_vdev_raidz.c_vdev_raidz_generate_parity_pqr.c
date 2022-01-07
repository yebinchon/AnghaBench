
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint64_t ;
struct pqr_struct {size_t* member_0; size_t* member_1; size_t* member_2; } ;
struct TYPE_5__ {int rm_firstdatacol; int rm_cols; TYPE_1__* rm_col; } ;
typedef TYPE_2__ raidz_map_t ;
typedef int p ;
typedef int abd_t ;
struct TYPE_4__ {int rc_size; int * rc_abd; } ;


 int ASSERT (int) ;
 int VDEV_RAIDZ_64MUL_2 (size_t,size_t) ;
 int VDEV_RAIDZ_64MUL_4 (size_t,size_t) ;
 size_t VDEV_RAIDZ_P ;
 size_t VDEV_RAIDZ_Q ;
 size_t VDEV_RAIDZ_R ;
 int abd_copy_to_buf (size_t*,int *,int) ;
 int abd_iterate_func (int *,int ,int,int ,struct pqr_struct*) ;
 size_t* abd_to_buf (int *) ;
 int memcpy (size_t*,size_t*,int) ;
 int vdev_raidz_pqr_func ;

__attribute__((used)) static void
vdev_raidz_generate_parity_pqr(raidz_map_t *rm)
{
 uint64_t *p, *q, *r, pcnt, ccnt, mask, i;
 int c;
 abd_t *src;

 pcnt = rm->rm_col[VDEV_RAIDZ_P].rc_size / sizeof (p[0]);
 ASSERT(rm->rm_col[VDEV_RAIDZ_P].rc_size ==
     rm->rm_col[VDEV_RAIDZ_Q].rc_size);
 ASSERT(rm->rm_col[VDEV_RAIDZ_P].rc_size ==
     rm->rm_col[VDEV_RAIDZ_R].rc_size);

 for (c = rm->rm_firstdatacol; c < rm->rm_cols; c++) {
  src = rm->rm_col[c].rc_abd;
  p = abd_to_buf(rm->rm_col[VDEV_RAIDZ_P].rc_abd);
  q = abd_to_buf(rm->rm_col[VDEV_RAIDZ_Q].rc_abd);
  r = abd_to_buf(rm->rm_col[VDEV_RAIDZ_R].rc_abd);

  ccnt = rm->rm_col[c].rc_size / sizeof (p[0]);

  if (c == rm->rm_firstdatacol) {
   ASSERT(ccnt == pcnt || ccnt == 0);
   abd_copy_to_buf(p, src, rm->rm_col[c].rc_size);
   (void) memcpy(q, p, rm->rm_col[c].rc_size);
   (void) memcpy(r, p, rm->rm_col[c].rc_size);

   for (i = ccnt; i < pcnt; i++) {
    p[i] = 0;
    q[i] = 0;
    r[i] = 0;
   }
  } else {
   struct pqr_struct pqr = { p, q, r };

   ASSERT(ccnt <= pcnt);
   (void) abd_iterate_func(src, 0, rm->rm_col[c].rc_size,
       vdev_raidz_pqr_func, &pqr);





   for (i = ccnt; i < pcnt; i++) {
    VDEV_RAIDZ_64MUL_2(q[i], mask);
    VDEV_RAIDZ_64MUL_4(r[i], mask);
   }
  }
 }
}
