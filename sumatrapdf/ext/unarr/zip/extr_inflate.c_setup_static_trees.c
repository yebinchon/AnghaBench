
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tree_dists; int tree_lengths; } ;
typedef TYPE_1__ inflate_state ;


 int memset (int *,int ,int) ;
 int tree_add_value (int *,int,int,int) ;

__attribute__((used)) static void setup_static_trees(inflate_state *state)
{
    int i;

    memset(&state->tree_lengths, 0, sizeof(state->tree_lengths));
    for (i = 0; i < 144; i++)
        tree_add_value(&state->tree_lengths, i + 48, 8, i);
    for (i = 144; i < 256; i++)
        tree_add_value(&state->tree_lengths, i + 256, 9, i);
    for (i = 256; i < 280; i++)
        tree_add_value(&state->tree_lengths, i - 256, 7, i);
    for (i = 280; i < 288; i++)
        tree_add_value(&state->tree_lengths, i - 88, 8, i);

    memset(&state->tree_dists, 0, sizeof(state->tree_dists));
    for (i = 0; i < 32; i++)
        tree_add_value(&state->tree_dists, i, 5, i);
}
