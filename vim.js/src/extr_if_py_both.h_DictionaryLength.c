
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* dict; } ;
struct TYPE_5__ {scalar_t__ ht_used; } ;
struct TYPE_6__ {TYPE_1__ dv_hashtab; } ;
typedef int PyInt ;
typedef TYPE_3__ DictionaryObject ;



__attribute__((used)) static PyInt
DictionaryLength(DictionaryObject *self)
{
    return ((PyInt) (self->dict->dv_hashtab.ht_used));
}
