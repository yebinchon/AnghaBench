
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct redact_record {scalar_t__ start_object; } ;
typedef int objset_t ;
struct TYPE_5__ {int dn_type; } ;
typedef TYPE_1__ dnode_t ;


 int B_FALSE ;
 scalar_t__ DMU_OT_IS_METADATA (int ) ;
 void* FTAG ;
 int dmu_object_next (int *,scalar_t__*,int ,int ) ;
 int dnode_hold (int *,scalar_t__,void*,TYPE_1__**) ;
 int dnode_rele (TYPE_1__*,void*) ;

__attribute__((used)) static int
hold_next_object(objset_t *os, struct redact_record *rec, void *tag,
    uint64_t *object, dnode_t **dn)
{
 int err = 0;
 if (*dn != ((void*)0))
  dnode_rele(*dn, FTAG);
 *dn = ((void*)0);
 if (*object < rec->start_object) {
  *object = rec->start_object - 1;
 }
 err = dmu_object_next(os, object, B_FALSE, 0);
 if (err != 0)
  return (err);

 err = dnode_hold(os, *object, tag, dn);
 while (err == 0 && (*object < rec->start_object ||
     DMU_OT_IS_METADATA((*dn)->dn_type))) {
  dnode_rele(*dn, tag);
  *dn = ((void*)0);
  err = dmu_object_next(os, object, B_FALSE, 0);
  if (err != 0)
   break;
  err = dnode_hold(os, *object, tag, dn);
 }
 return (err);
}
