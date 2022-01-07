
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int CSTRINGOID ;
 int CStringGetDatum (char const*) ;
 int UUIDOID ;
 int UUIDPGetDatum (int ) ;
 int ts_metadata_get_value (int ,int ,int ,int*) ;
 int ts_metadata_insert (int ,int ,int ,int ,int) ;
 int ts_uuid_create () ;

__attribute__((used)) static Datum
get_uuid_by_key(const char *key)
{
 bool isnull;
 Datum uuid;

 uuid = ts_metadata_get_value(CStringGetDatum(key), CSTRINGOID, UUIDOID, &isnull);

 if (isnull)
  uuid = ts_metadata_insert(CStringGetDatum(key),
          CSTRINGOID,
          UUIDPGetDatum(ts_uuid_create()),
          UUIDOID,
          1);
 return uuid;
}
