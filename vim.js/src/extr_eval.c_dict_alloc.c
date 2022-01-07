
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dv_copyID; scalar_t__ dv_refcount; scalar_t__ dv_scope; scalar_t__ dv_lock; int dv_hashtab; struct TYPE_4__* dv_used_prev; struct TYPE_4__* dv_used_next; } ;
typedef TYPE_1__ dict_T ;


 scalar_t__ alloc (int) ;
 TYPE_1__* first_dict ;
 int hash_init (int *) ;

dict_T *
dict_alloc()
{
    dict_T *d;

    d = (dict_T *)alloc(sizeof(dict_T));
    if (d != ((void*)0))
    {

 if (first_dict != ((void*)0))
     first_dict->dv_used_prev = d;
 d->dv_used_next = first_dict;
 d->dv_used_prev = ((void*)0);
 first_dict = d;

 hash_init(&d->dv_hashtab);
 d->dv_lock = 0;
 d->dv_scope = 0;
 d->dv_refcount = 0;
 d->dv_copyID = 0;
    }
    return d;
}
