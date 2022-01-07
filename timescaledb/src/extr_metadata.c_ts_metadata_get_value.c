
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Datum ;


 int AccessShareLock ;
 int metadata_get_value_internal (int ,int ,int ,int*,int ) ;

Datum
ts_metadata_get_value(Datum metadata_key, Oid key_type, Oid value_type, bool *isnull)
{
 return metadata_get_value_internal(metadata_key, key_type, value_type, isnull, AccessShareLock);
}
