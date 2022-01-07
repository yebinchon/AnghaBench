
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int argtype ;
struct TYPE_3__ {int chunk_sizing_func_name; int chunk_sizing_func_schema; } ;
typedef int Oid ;
typedef TYPE_1__ FormData_hypertable ;


 int INT4OID ;
 int INT8OID ;
 int LookupFuncName (int ,int,int *,int) ;
 int NameStr (int ) ;
 int list_make2 (int ,int ) ;
 int makeString (int ) ;

__attribute__((used)) static Oid
get_chunk_sizing_func_oid(FormData_hypertable *fd)
{
 Oid argtype[] = { INT4OID, INT8OID, INT8OID };
 return LookupFuncName(list_make2(makeString(NameStr(fd->chunk_sizing_func_schema)),
          makeString(NameStr(fd->chunk_sizing_func_name))),
        sizeof(argtype) / sizeof(argtype[0]),
        argtype,
        0);
}
