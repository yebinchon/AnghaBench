
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zn_hash; int zn_zap; } ;
typedef TYPE_1__ zap_name_t ;
typedef int zap_leaf_t ;
struct TYPE_7__ {int zeh_num_integers; int zeh_integer_size; } ;
typedef TYPE_2__ zap_entry_handle_t ;
typedef int uint64_t ;


 int RW_READER ;
 int zap_deref_leaf (int ,int ,int *,int ,int **) ;
 int zap_leaf_lookup (int *,TYPE_1__*,TYPE_2__*) ;
 int zap_put_leaf (int *) ;

int
fzap_length(zap_name_t *zn,
    uint64_t *integer_size, uint64_t *num_integers)
{
 zap_leaf_t *l;
 int err;
 zap_entry_handle_t zeh;

 err = zap_deref_leaf(zn->zn_zap, zn->zn_hash, ((void*)0), RW_READER, &l);
 if (err != 0)
  return (err);
 err = zap_leaf_lookup(l, zn, &zeh);
 if (err != 0)
  goto out;

 if (integer_size != 0)
  *integer_size = zeh.zeh_integer_size;
 if (num_integers != 0)
  *num_integers = zeh.zeh_num_integers;
out:
 zap_put_leaf(l);
 return (err);
}
