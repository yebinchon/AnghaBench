
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int hashitem_T ;
struct TYPE_7__ {int di_key; } ;
struct TYPE_6__ {int * ht_array; scalar_t__ ht_used; } ;


 int HASHITEM_EMPTY (int *) ;
 TYPE_5__* HI2DI (int *) ;
 scalar_t__ STRNCMP (int ,char*,int) ;
 int delete_var (TYPE_1__*,int *) ;
 TYPE_1__ globvarht ;
 int got_int ;
 int hash_lock (TYPE_1__*) ;
 int hash_unlock (TYPE_1__*) ;

void
del_menutrans_vars()
{
    hashitem_T *hi;
    int todo;

    hash_lock(&globvarht);
    todo = (int)globvarht.ht_used;
    for (hi = globvarht.ht_array; todo > 0 && !got_int; ++hi)
    {
 if (!HASHITEM_EMPTY(hi))
 {
     --todo;
     if (STRNCMP(HI2DI(hi)->di_key, "menutrans_", 10) == 0)
  delete_var(&globvarht, hi);
 }
    }
    hash_unlock(&globvarht);
}
