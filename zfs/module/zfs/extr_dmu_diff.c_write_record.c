
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ddr_type; } ;
struct diffarg {int da_err; int* da_offp; TYPE_1__ da_ddr; int da_vp; } ;
typedef int ssize_t ;
typedef int caddr_t ;


 int CRED () ;
 scalar_t__ DDR_NONE ;
 int FAPPEND ;
 int RLIM64_INFINITY ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int vn_rdwr (int ,int ,int ,int,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static int
write_record(struct diffarg *da)
{
 ssize_t resid;

 if (da->da_ddr.ddr_type == DDR_NONE) {
  da->da_err = 0;
  return (0);
 }

 da->da_err = vn_rdwr(UIO_WRITE, da->da_vp, (caddr_t)&da->da_ddr,
     sizeof (da->da_ddr), 0, UIO_SYSSPACE, FAPPEND,
     RLIM64_INFINITY, CRED(), &resid);
 *da->da_offp += sizeof (da->da_ddr);
 return (da->da_err);
}
