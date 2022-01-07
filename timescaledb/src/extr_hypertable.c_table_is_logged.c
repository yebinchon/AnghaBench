
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 scalar_t__ RELPERSISTENCE_PERMANENT ;
 scalar_t__ get_rel_persistence (int ) ;

__attribute__((used)) static bool
table_is_logged(Oid table_relid)
{
 return get_rel_persistence(table_relid) == RELPERSISTENCE_PERMANENT;
}
