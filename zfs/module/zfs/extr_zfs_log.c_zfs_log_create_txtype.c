
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zil_create_t ;
typedef int vsecattr_t ;
struct TYPE_3__ {int va_mask; } ;
typedef TYPE_1__ vattr_t ;


 int ASSERT (int ) ;
 int ATTR_XVATTR ;
 int TX_CREATE ;
 int TX_CREATE_ACL ;
 int TX_CREATE_ACL_ATTR ;
 int TX_CREATE_ATTR ;
 int TX_MAX_TYPE ;
 int TX_MKDIR ;
 int TX_MKDIR_ACL ;
 int TX_MKDIR_ACL_ATTR ;
 int TX_MKDIR_ATTR ;
 int TX_MKXATTR ;




int
zfs_log_create_txtype(zil_create_t type, vsecattr_t *vsecp, vattr_t *vap)
{
 int isxvattr = (vap->va_mask & ATTR_XVATTR);
 switch (type) {
 case 129:
  if (vsecp == ((void*)0) && !isxvattr)
   return (TX_CREATE);
  if (vsecp && isxvattr)
   return (TX_CREATE_ACL_ATTR);
  if (vsecp)
   return (TX_CREATE_ACL);
  else
   return (TX_CREATE_ATTR);

 case 130:
  if (vsecp == ((void*)0) && !isxvattr)
   return (TX_MKDIR);
  if (vsecp && isxvattr)
   return (TX_MKDIR_ACL_ATTR);
  if (vsecp)
   return (TX_MKDIR_ACL);
  else
   return (TX_MKDIR_ATTR);
 case 128:
  return (TX_MKXATTR);
 }
 ASSERT(0);
 return (TX_MAX_TYPE);
}
