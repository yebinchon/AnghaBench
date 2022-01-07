
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sway_output_state {int active_workspace; int workspaces; } ;
struct sway_transaction_instruction {struct sway_output_state output_state; } ;
struct sway_output {int workspaces; } ;


 int create_list () ;
 int list_cat (int ,int ) ;
 int output_get_active_workspace (struct sway_output*) ;

__attribute__((used)) static void copy_output_state(struct sway_output *output,
  struct sway_transaction_instruction *instruction) {
 struct sway_output_state *state = &instruction->output_state;
 state->workspaces = create_list();
 list_cat(state->workspaces, output->workspaces);

 state->active_workspace = output_get_active_workspace(output);
}
