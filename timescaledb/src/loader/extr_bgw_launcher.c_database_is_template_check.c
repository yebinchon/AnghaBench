
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ datistemplate; } ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_database ;


 int DATABASEOID ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int MyDatabaseId ;
 int ObjectIdGetDatum (int ) ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int ereport (int ,int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
database_is_template_check(void)
{
 Form_pg_database pgdb;
 HeapTuple tuple;

 tuple = SearchSysCache1(DATABASEOID, ObjectIdGetDatum(MyDatabaseId));
 if (!HeapTupleIsValid(tuple))
  ereport(ERROR,
    (errmsg("TimescaleDB background worker failed to find entry for database in "
      "syscache")));

 pgdb = (Form_pg_database) GETSTRUCT(tuple);
 if (pgdb->datistemplate)
  ereport(ERROR,
    (errmsg("TimescaleDB background worker connected to template database, exiting")));

 ReleaseSysCache(tuple);
}
