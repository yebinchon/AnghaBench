
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pg_uuid_t ;
typedef int TimestampTz ;


 int GetCurrentTimestamp () ;
 int UUID_LEN ;
 int memcpy (unsigned char*,int *,int) ;
 unsigned char* palloc0 (int ) ;
 int pg_backend_random (char*,int ) ;

pg_uuid_t *
ts_uuid_create(void)
{




 unsigned char *gen_uuid = palloc0(UUID_LEN);
 bool rand_success = 0;


 rand_success = pg_backend_random((char *) gen_uuid, UUID_LEN);
 if (!rand_success)
 {
  TimestampTz ts = GetCurrentTimestamp();

  memcpy(&gen_uuid[8], &ts, sizeof(TimestampTz));
 }

 gen_uuid[6] = (gen_uuid[6] & 0x0f) | 0x40;
 gen_uuid[8] = (gen_uuid[8] & 0x3f) | 0x80;

 return (pg_uuid_t *) gen_uuid;
}
