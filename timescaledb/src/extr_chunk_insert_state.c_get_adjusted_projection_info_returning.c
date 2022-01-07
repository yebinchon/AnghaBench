
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleDesc ;
struct TYPE_6__ {int pi_exprContext; } ;
typedef TYPE_1__ ProjectionInfo ;
typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef int Index ;
typedef int AttrNumber ;


 int Assert (int) ;
 TYPE_1__* ExecBuildProjectionInfoCompat (int *,int ,int ,int *,int ) ;
 int * NIL ;
 int get_projection_info_slot_compat (TYPE_1__*) ;
 scalar_t__ map_variable_attnos_compat (int *,int ,int ,int *,int,int ,int*) ;

__attribute__((used)) static ProjectionInfo *
get_adjusted_projection_info_returning(ProjectionInfo *orig, List *returning_clauses,
            AttrNumber *map, int map_size, Index varno, Oid rowtype,
            TupleDesc chunk_desc)
{
 bool found_whole_row;

 Assert(returning_clauses != NIL);


 returning_clauses = (List *) map_variable_attnos_compat((Node *) returning_clauses,
               varno,
               0,
               map,
               map_size,
               rowtype,
               &found_whole_row);

 return ExecBuildProjectionInfoCompat(returning_clauses,
           orig->pi_exprContext,
           get_projection_info_slot_compat(orig),
           ((void*)0),
           chunk_desc);
}
