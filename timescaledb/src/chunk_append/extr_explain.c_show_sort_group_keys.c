
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_14__ ;


struct TYPE_21__ {scalar_t__ expr; } ;
typedef TYPE_4__ TargetEntry ;
struct TYPE_18__ {int * plan; } ;
struct TYPE_19__ {TYPE_1__ ps; } ;
struct TYPE_20__ {TYPE_2__ ss; } ;
struct TYPE_24__ {int sort_options; TYPE_3__ csstate; } ;
struct TYPE_23__ {scalar_t__ verbose; int * rtable; int deparse_cxt; } ;
struct TYPE_22__ {int data; } ;
struct TYPE_17__ {int custom_scan_tlist; } ;
typedef TYPE_5__ StringInfoData ;
typedef int Plan ;
typedef int Node ;
typedef int List ;
typedef TYPE_6__ ExplainState ;
typedef TYPE_7__ ChunkAppendState ;
typedef int AttrNumber ;


 int CustomScan ;
 int ERROR ;
 int ExplainPropertyList (char*,int *,TYPE_6__*) ;
 int * NIL ;
 int appendStringInfoString (TYPE_5__*,char*) ;
 TYPE_14__* castNode (int ,int *) ;
 char* deparse_expression (int *,int *,int,int) ;
 int elog (int ,char*,int ) ;
 TYPE_4__* get_tle_by_resno (int ,int ) ;
 int initStringInfo (TYPE_5__*) ;
 int * lappend (int *,int ) ;
 int * lfourth (int ) ;
 int * linitial (int ) ;
 int list_length (int *) ;
 int list_nth_oid (int *,int) ;
 int * lsecond (int ) ;
 int * lthird (int ) ;
 int pstrdup (int ) ;
 int resetStringInfo (TYPE_5__*) ;
 int * set_deparse_context_planstate (int ,int *,int *) ;
 int show_sortorder_options (TYPE_5__*,int *,int ,int ,int ) ;

__attribute__((used)) static void
show_sort_group_keys(ChunkAppendState *state, List *ancestors, ExplainState *es)
{
 Plan *plan = state->csstate.ss.ps.plan;
 List *context;
 List *result = NIL;
 StringInfoData sortkeybuf;
 bool useprefix;
 int keyno;
 int nkeys = list_length(linitial(state->sort_options));
 List *sort_indexes = linitial(state->sort_options);
 List *sort_ops = lsecond(state->sort_options);
 List *sort_collations = lthird(state->sort_options);
 List *sort_nulls = lfourth(state->sort_options);

 if (nkeys <= 0)
  return;

 initStringInfo(&sortkeybuf);


 context = set_deparse_context_planstate(es->deparse_cxt, (Node *) state, ancestors);
 useprefix = (list_length(es->rtable) > 1 || es->verbose);

 for (keyno = 0; keyno < nkeys; keyno++)
 {

  AttrNumber keyresno = list_nth_oid(sort_indexes, keyno);
  TargetEntry *target =
   get_tle_by_resno(castNode(CustomScan, plan)->custom_scan_tlist, keyresno);
  char *exprstr;

  if (!target)
   elog(ERROR, "no tlist entry for key %d", keyresno);

  exprstr = deparse_expression((Node *) target->expr, context, useprefix, 1);
  resetStringInfo(&sortkeybuf);
  appendStringInfoString(&sortkeybuf, exprstr);

  if (sort_ops != NIL)
   show_sortorder_options(&sortkeybuf,
           (Node *) target->expr,
           list_nth_oid(sort_ops, keyno),
           list_nth_oid(sort_collations, keyno),
           list_nth_oid(sort_nulls, keyno));

  result = lappend(result, pstrdup(sortkeybuf.data));
 }

 ExplainPropertyList("Order", result, es);
}
