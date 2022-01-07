
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int int64 ;
typedef scalar_t__ int32 ;
typedef int TupleDesc ;
struct TYPE_2__ {scalar_t__ current_time; } ;
typedef int Relation ;
typedef int Datum ;


 int CStringGetTextDatum (char*) ;
 int Int32GetDatum (int ) ;
 int Int64GetDatum (int ) ;
 int RelationGetDescr (int ) ;
 char* application_name ;
 int ts_catalog_insert_values (int ,int ,int *,int*) ;
 TYPE_1__* ts_params_get () ;

__attribute__((used)) static bool
bgw_log_insert_relation(Relation rel, char *msg)
{
 TupleDesc desc = RelationGetDescr(rel);
 static int32 msg_no = 0;
 Datum values[4];
 bool nulls[4] = { 0, 0, 0 };

 values[0] = Int32GetDatum(msg_no++);
 values[1] = Int64GetDatum((int64) ts_params_get()->current_time);
 values[2] = CStringGetTextDatum(application_name);
 values[3] = CStringGetTextDatum(msg);

 ts_catalog_insert_values(rel, desc, values, nulls);

 return 1;
}
