
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_2__ {int dbi_len; scalar_t__ dbi_buf; int dbi_vp; int dbi_err; } ;
typedef TYPE_1__ dump_bytes_io_t ;
typedef int caddr_t ;


 int CRED () ;
 int FAPPEND ;
 int RLIM64_INFINITY ;
 int UIO_SYSSPACE ;
 int UIO_WRITE ;
 int vn_rdwr (int ,int ,int ,int ,int ,int ,int ,int ,int ,int *) ;

__attribute__((used)) static void
dump_bytes_cb(void *arg)
{
 dump_bytes_io_t *dbi = (dump_bytes_io_t *)arg;
 ssize_t resid;

 dbi->dbi_err = vn_rdwr(UIO_WRITE, dbi->dbi_vp,
     (caddr_t)dbi->dbi_buf, dbi->dbi_len,
     0, UIO_SYSSPACE, FAPPEND, RLIM64_INFINITY, CRED(), &resid);
}
