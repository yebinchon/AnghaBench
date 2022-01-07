
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int CSTRINGOID ;
 int CStringGetDatum (int ) ;
 int GetCurrentTimestamp () ;
 int METADATA_TIMESTAMP_KEY_NAME ;
 int TIMESTAMPTZOID ;
 int TimestampTzGetDatum (int ) ;
 int ts_metadata_get_value (int ,int ,int ,int*) ;
 int ts_metadata_insert (int ,int ,int ,int ,int) ;

Datum
ts_telemetry_metadata_get_install_timestamp(void)
{
 bool isnull;
 Datum timestamp;

 timestamp = ts_metadata_get_value(CStringGetDatum(METADATA_TIMESTAMP_KEY_NAME),
           CSTRINGOID,
           TIMESTAMPTZOID,
           &isnull);

 if (isnull)
  timestamp = ts_metadata_insert(CStringGetDatum(METADATA_TIMESTAMP_KEY_NAME),
            CSTRINGOID,
            TimestampTzGetDatum(GetCurrentTimestamp()),
            TIMESTAMPTZOID,
            1);

 return timestamp;
}
