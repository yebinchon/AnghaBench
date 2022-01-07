
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ varno; scalar_t__ varattno; } ;
typedef TYPE_3__ Var ;
struct TYPE_10__ {int compression_info; TYPE_2__* chunk_rte; TYPE_1__* chunk_rel; } ;
struct TYPE_8__ {int relid; } ;
struct TYPE_7__ {scalar_t__ relid; } ;
typedef TYPE_4__ QualPushdownContext ;
typedef int FormData_hypertable_compression ;


 char* get_attname_compat (int ,scalar_t__,int) ;
 int * get_column_compressioninfo (int ,char*) ;

__attribute__((used)) static inline FormData_hypertable_compression *
get_compression_info_from_var(QualPushdownContext *context, Var *var)
{
 char *column_name;

 if (var->varno != context->chunk_rel->relid)
  return ((void*)0);


 if (var->varattno <= 0)
  return ((void*)0);

 column_name = get_attname_compat(context->chunk_rte->relid, var->varattno, 0);
 return get_column_compressioninfo(context->compression_info, column_name);
}
