
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct receive_writer_arg {int byteswap; scalar_t__ max_object; scalar_t__ or_firstobj; scalar_t__ or_numslots; int or_byteorder; int or_mac; int or_iv; int or_salt; int or_crypt_params_present; int raw; } ;
struct drr_object_range {scalar_t__ drr_numslots; scalar_t__ drr_firstobj; int drr_mac; int drr_iv; int drr_salt; int drr_flags; } ;
typedef int boolean_t ;


 int B_TRUE ;
 scalar_t__ DNODES_PER_BLOCK ;
 int DRR_IS_RAW_BYTESWAPPED (int ) ;
 int EINVAL ;
 scalar_t__ P2PHASE (scalar_t__,scalar_t__) ;
 int SET_ERROR (int ) ;
 int ZFS_HOST_BYTEORDER ;
 int ZIO_DATA_IV_LEN ;
 int ZIO_DATA_MAC_LEN ;
 int ZIO_DATA_SALT_LEN ;
 int bcopy (int ,int ,int ) ;

__attribute__((used)) static int
receive_object_range(struct receive_writer_arg *rwa,
    struct drr_object_range *drror)
{







 boolean_t byteorder = ZFS_HOST_BYTEORDER ^ rwa->byteswap ^
     !!DRR_IS_RAW_BYTESWAPPED(drror->drr_flags);
 if (drror->drr_numslots != DNODES_PER_BLOCK ||
     P2PHASE(drror->drr_firstobj, DNODES_PER_BLOCK) != 0 ||
     !rwa->raw)
  return (SET_ERROR(EINVAL));

 if (drror->drr_firstobj > rwa->max_object)
  rwa->max_object = drror->drr_firstobj;






 rwa->or_crypt_params_present = B_TRUE;
 rwa->or_firstobj = drror->drr_firstobj;
 rwa->or_numslots = drror->drr_numslots;
 bcopy(drror->drr_salt, rwa->or_salt, ZIO_DATA_SALT_LEN);
 bcopy(drror->drr_iv, rwa->or_iv, ZIO_DATA_IV_LEN);
 bcopy(drror->drr_mac, rwa->or_mac, ZIO_DATA_MAC_LEN);
 rwa->or_byteorder = byteorder;

 return (0);
}
