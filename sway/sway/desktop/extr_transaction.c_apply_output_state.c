
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sway_output_state {int dummy; } ;
struct TYPE_2__ {int workspaces; } ;
struct sway_output {TYPE_1__ current; } ;


 int list_free (int ) ;
 int memcpy (TYPE_1__*,struct sway_output_state*,int) ;
 int output_damage_whole (struct sway_output*) ;

__attribute__((used)) static void apply_output_state(struct sway_output *output,
  struct sway_output_state *state) {
 output_damage_whole(output);
 list_free(output->current.workspaces);
 memcpy(&output->current, state, sizeof(struct sway_output_state));
 output_damage_whole(output);
}
