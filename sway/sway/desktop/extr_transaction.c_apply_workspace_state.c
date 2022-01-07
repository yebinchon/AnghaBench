
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_workspace_state {int dummy; } ;
struct TYPE_2__ {int output; int tiling; int floating; } ;
struct sway_workspace {TYPE_1__ current; } ;


 int list_free (int ) ;
 int memcpy (TYPE_1__*,struct sway_workspace_state*,int) ;
 int output_damage_whole (int ) ;

__attribute__((used)) static void apply_workspace_state(struct sway_workspace *ws,
  struct sway_workspace_state *state) {
 output_damage_whole(ws->current.output);
 list_free(ws->current.floating);
 list_free(ws->current.tiling);
 memcpy(&ws->current, state, sizeof(struct sway_workspace_state));
 output_damage_whole(ws->current.output);
}
