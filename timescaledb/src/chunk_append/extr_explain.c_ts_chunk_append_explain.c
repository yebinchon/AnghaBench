
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ sort_options; int runtime_number_loops; int runtime_number_exclusions; scalar_t__ runtime_exclusion; int initial_subplans; scalar_t__ startup_exclusion; } ;
struct TYPE_11__ {int custom_ps; } ;
struct TYPE_10__ {scalar_t__ format; scalar_t__ verbose; } ;
typedef int List ;
typedef TYPE_1__ ExplainState ;
typedef TYPE_2__ CustomScanState ;
typedef TYPE_3__ ChunkAppendState ;


 scalar_t__ EXPLAIN_FORMAT_TEXT ;
 int ExplainPropertyBool (char*,scalar_t__,TYPE_1__*) ;
 int ExplainPropertyIntegerCompat (char*,int *,int,TYPE_1__*) ;
 scalar_t__ NIL ;
 int list_length (int ) ;
 int show_sort_group_keys (TYPE_3__*,int *,TYPE_1__*) ;

void
ts_chunk_append_explain(CustomScanState *node, List *ancestors, ExplainState *es)
{
 ChunkAppendState *state = (ChunkAppendState *) node;

 if (state->sort_options != NIL)
  show_sort_group_keys(state, ancestors, es);

 if (es->verbose || es->format != EXPLAIN_FORMAT_TEXT)
  ExplainPropertyBool("Startup Exclusion", state->startup_exclusion, es);

 if (es->verbose || es->format != EXPLAIN_FORMAT_TEXT)
  ExplainPropertyBool("Runtime Exclusion", state->runtime_exclusion, es);

 if (state->startup_exclusion)
  ExplainPropertyIntegerCompat("Chunks excluded during startup",
          ((void*)0),
          list_length(state->initial_subplans) -
           list_length(node->custom_ps),
          es);

 if (state->runtime_exclusion && state->runtime_number_loops > 0)
 {
  int avg_excluded = state->runtime_number_exclusions / state->runtime_number_loops;
  ExplainPropertyIntegerCompat("Chunks excluded during runtime", ((void*)0), avg_excluded, es);
 }
}
