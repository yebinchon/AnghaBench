
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int output_signature; int output; int name; int input_signature; int input; } ;
typedef TYPE_1__ patch_data ;


 int apply_patch (TYPE_1__*) ;
 int validate_patch (TYPE_1__*) ;
 int validate_signature (int ,char*,int *,int ) ;

void test_one(patch_data* current)
{
    validate_signature(current->name, "input", &current->input, current->input_signature);
    validate_signature(current->name, "output", &current->output, current->output_signature);
    apply_patch(current);
    validate_patch(current);
}
