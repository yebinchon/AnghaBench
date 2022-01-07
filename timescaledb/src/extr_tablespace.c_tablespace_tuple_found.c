
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int tuple; } ;
typedef TYPE_1__ TupleInfo ;
typedef int Tablespaces ;
struct TYPE_6__ {int tablespace_name; } ;
typedef int ScanTupleResult ;
typedef int Oid ;
typedef TYPE_2__ FormData_tablespace ;


 scalar_t__ GETSTRUCT (int ) ;
 int NameStr (int ) ;
 int SCAN_CONTINUE ;
 int get_tablespace_oid (int ,int) ;
 int ts_tablespaces_add (int *,TYPE_2__*,int ) ;

__attribute__((used)) static ScanTupleResult
tablespace_tuple_found(TupleInfo *ti, void *data)
{
 Tablespaces *tspcs = data;
 FormData_tablespace *form = (FormData_tablespace *) GETSTRUCT(ti->tuple);
 Oid tspcoid = get_tablespace_oid(NameStr(form->tablespace_name), 1);

 if (((void*)0) != tspcs)
  ts_tablespaces_add(tspcs, form, tspcoid);

 return SCAN_CONTINUE;
}
