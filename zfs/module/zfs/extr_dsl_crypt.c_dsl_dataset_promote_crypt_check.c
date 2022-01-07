
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ dd_crypto_obj; scalar_t__ dd_object; struct TYPE_6__* dd_parent; } ;
typedef TYPE_1__ dsl_dir_t ;


 int EACCES ;
 int ENOENT ;
 int SET_ERROR (int ) ;
 int dsl_dir_get_encryption_root_ddobj (TYPE_1__*,scalar_t__*) ;
 scalar_t__ dsl_dir_is_clone (TYPE_1__*) ;

int
dsl_dataset_promote_crypt_check(dsl_dir_t *target, dsl_dir_t *origin)
{
 int ret;
 uint64_t rddobj, op_rddobj, tp_rddobj;


 if (origin->dd_crypto_obj == 0)
  return (0);





 if (dsl_dir_is_clone(origin))
  return (0);





 ret = dsl_dir_get_encryption_root_ddobj(origin, &rddobj);
 if (ret != 0)
  return (ret);

 if (rddobj == origin->dd_object)
  return (0);





 ret = dsl_dir_get_encryption_root_ddobj(origin->dd_parent, &op_rddobj);
 if (ret == ENOENT)
  return (SET_ERROR(EACCES));
 else if (ret != 0)
  return (ret);

 ret = dsl_dir_get_encryption_root_ddobj(target->dd_parent, &tp_rddobj);
 if (ret == ENOENT)
  return (SET_ERROR(EACCES));
 else if (ret != 0)
  return (ret);

 if (op_rddobj != tp_rddobj)
  return (SET_ERROR(EACCES));

 return (0);
}
