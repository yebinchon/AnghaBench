
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Node ;
typedef int List ;
typedef int Index ;
typedef int ExprState ;
typedef int Expr ;
typedef int AttrNumber ;


 int Assert (int) ;
 int * ExecInitExpr (int *,int *) ;
 int * ExecInitQual (int *,int *) ;
 int INNER_VAR ;
 int * NIL ;
 scalar_t__ map_variable_attnos_compat (int *,int ,int ,int *,int,int ,int*) ;

__attribute__((used)) static ExprState *
get_adjusted_onconflictupdate_where(ExprState *hyper_where_state, List *where_quals,
         AttrNumber *map, int map_size, Index varno, Oid rowtype)
{
 bool found_whole_row;

 Assert(where_quals != NIL);

 where_quals = (List *) map_variable_attnos_compat((Node *) where_quals,
               varno,
               0,
               map,
               map_size,
               rowtype,
               &found_whole_row);

 where_quals = (List *) map_variable_attnos_compat((Node *) where_quals,
               INNER_VAR,
               0,
               map,
               map_size,
               rowtype,
               &found_whole_row);



 return ExecInitQual(where_quals, ((void*)0));

}
