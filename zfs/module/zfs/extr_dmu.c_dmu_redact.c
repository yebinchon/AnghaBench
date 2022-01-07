
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int objset_t ;
typedef int dmu_tx_t ;
typedef int dmu_buf_t ;


 int FALSE ;
 int FTAG ;
 int VERIFY0 (int ) ;
 int dmu_buf_hold_array (int *,int ,int ,int ,int ,int ,int*,int ***) ;
 int dmu_buf_redact (int *,int *) ;
 int dmu_buf_rele_array (int **,int,int ) ;

void
dmu_redact(objset_t *os, uint64_t object, uint64_t offset, uint64_t size,
    dmu_tx_t *tx)
{
 int numbufs, i;
 dmu_buf_t **dbp;

 VERIFY0(dmu_buf_hold_array(os, object, offset, size, FALSE, FTAG,
     &numbufs, &dbp));
 for (i = 0; i < numbufs; i++)
  dmu_buf_redact(dbp[i], tx);
 dmu_buf_rele_array(dbp, numbufs, FTAG);
}
