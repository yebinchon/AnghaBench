
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int get_namespace_oid (char*,int) ;
 int get_relname_relid (char*,int ) ;

__attribute__((used)) static Oid
get_dsm_handle_table_oid()
{
 return get_relname_relid("bgw_dsm_handle_store", get_namespace_oid("public", 0));
}
