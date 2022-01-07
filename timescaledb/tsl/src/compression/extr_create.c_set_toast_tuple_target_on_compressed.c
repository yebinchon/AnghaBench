
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* defname; int location; int * def; int subtype; int type; int defaction; int * arg; } ;
typedef int Oid ;
typedef int Node ;
typedef TYPE_1__ DefElem ;
typedef TYPE_1__ AlterTableCmd ;


 int AT_SetRelOptions ;
 int AlterTableInternal (int ,scalar_t__,int) ;
 int DEFELEM_SET ;
 int T_AlterTableCmd ;
 int T_DefElem ;
 scalar_t__ list_make1 (TYPE_1__*) ;
 scalar_t__ makeInteger (int) ;

__attribute__((used)) static void
set_toast_tuple_target_on_compressed(Oid compressed_table_id)
{
 DefElem def_elem = {
  .type = T_DefElem,
  .defname = "toast_tuple_target",
  .arg = (Node *) makeInteger(128),
  .defaction = DEFELEM_SET,
  .location = -1,
 };
 AlterTableCmd cmd = {
  .type = T_AlterTableCmd,
  .subtype = AT_SetRelOptions,
  .def = (Node *) list_make1(&def_elem),
 };
 AlterTableInternal(compressed_table_id, list_make1(&cmd), 1);
}
