
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int TupleDesc ;
typedef int TupleConversionMap ;
struct TYPE_6__ {int pi_exprContext; } ;
typedef TYPE_1__ ProjectionInfo ;
typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef int Index ;
typedef int AttrNumber ;


 int Assert (int) ;
 TYPE_1__* ExecBuildProjectionInfoCompat (int *,int ,int ,int *,int ) ;
 int INNER_VAR ;
 int * NIL ;
 int * adjust_hypertable_tlist (int *,int *) ;
 int * copyObject (int *) ;
 int get_projection_info_slot_compat (TYPE_1__*) ;
 scalar_t__ map_variable_attnos_compat (int *,int ,int ,int *,int,int ,int*) ;

__attribute__((used)) static ProjectionInfo *
get_adjusted_projection_info_onconflictupdate(ProjectionInfo *orig, List *update_tles,
             AttrNumber *variable_attnos_map,
             int variable_attnos_map_size, Index varno,
             Oid rowtype, TupleDesc chunk_desc,
             TupleConversionMap *hypertable_to_chunk_map)
{
 bool found_whole_row;

 Assert(update_tles != NIL);

 update_tles = copyObject(update_tles);


 update_tles = (List *) map_variable_attnos_compat((Node *) update_tles,
               varno,
               0,
               variable_attnos_map,
               variable_attnos_map_size,
               rowtype,
               &found_whole_row);

 update_tles = (List *) map_variable_attnos_compat((Node *) update_tles,
               INNER_VAR,
               0,
               variable_attnos_map,
               variable_attnos_map_size,
               rowtype,
               &found_whole_row);

 update_tles = adjust_hypertable_tlist(update_tles, hypertable_to_chunk_map);

 return ExecBuildProjectionInfoCompat(update_tles,
           orig->pi_exprContext,
           get_projection_info_slot_compat(orig),
           ((void*)0),
           chunk_desc);
}
