
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int integer_now_func; int integer_now_func_schema; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef int Oid ;
typedef TYPE_2__ Dimension ;


 int Assert (int ) ;
 int IS_INTEGER_TYPE (int ) ;
 int NameStr (int ) ;
 int noarg_integer_now_func_filter ;
 int ts_dimension_get_partition_type (TYPE_2__*) ;
 int ts_lookup_proc_filtered (int ,int ,int *,int ,int *) ;

__attribute__((used)) static Oid
get_integer_now_func(Dimension *open_dim)
{
 Oid rettype;
 Oid now_func;

 rettype = ts_dimension_get_partition_type(open_dim);

 Assert(IS_INTEGER_TYPE(rettype));

 now_func = ts_lookup_proc_filtered(NameStr(open_dim->fd.integer_now_func_schema),
            NameStr(open_dim->fd.integer_now_func),
            ((void*)0),
            noarg_integer_now_func_filter,
            &rettype);
 return now_func;
}
