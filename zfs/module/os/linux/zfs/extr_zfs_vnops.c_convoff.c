
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int va_size; } ;
typedef TYPE_1__ vattr_t ;
struct inode {int dummy; } ;
typedef int offset_t ;
struct TYPE_6__ {int l_whence; scalar_t__ l_start; } ;
typedef TYPE_2__ flock64_t ;


 int CRED () ;
 int EINVAL ;



 int SET_ERROR (int ) ;
 int zfs_getattr (struct inode*,TYPE_1__*,int ,int ) ;

int
convoff(struct inode *ip, flock64_t *lckdat, int whence, offset_t offset)
{
 vattr_t vap;
 int error;

 if ((lckdat->l_whence == 129) || (whence == 129)) {
  if ((error = zfs_getattr(ip, &vap, 0, CRED())))
   return (error);
 }

 switch (lckdat->l_whence) {
 case 130:
  lckdat->l_start += offset;
  break;
 case 129:
  lckdat->l_start += vap.va_size;

 case 128:
  break;
 default:
  return (SET_ERROR(EINVAL));
 }

 if (lckdat->l_start < 0)
  return (SET_ERROR(EINVAL));

 switch (whence) {
 case 130:
  lckdat->l_start -= offset;
  break;
 case 129:
  lckdat->l_start -= vap.va_size;

 case 128:
  break;
 default:
  return (SET_ERROR(EINVAL));
 }

 lckdat->l_whence = (short)whence;
 return (0);
}
