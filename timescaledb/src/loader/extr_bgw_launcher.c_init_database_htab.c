
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keysize; int entrysize; } ;
typedef int Oid ;
typedef int HTAB ;
typedef TYPE_1__ HASHCTL ;
typedef int DbHashEntry ;


 int HASH_BLOBS ;
 int HASH_ELEM ;
 int * hash_create (char*,int ,TYPE_1__*,int) ;
 int ts_guc_max_background_workers ;

__attribute__((used)) static HTAB *
init_database_htab(void)
{
 HASHCTL info = { .keysize = sizeof(Oid), .entrysize = sizeof(DbHashEntry) };

 return hash_create("launcher_db_htab",
        ts_guc_max_background_workers,
        &info,
        HASH_BLOBS | HASH_ELEM);
}
