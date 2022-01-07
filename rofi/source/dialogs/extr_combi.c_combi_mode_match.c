
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int rofi_int_matcher ;
struct TYPE_5__ {unsigned int num_switchers; unsigned int* starts; unsigned int* lengths; TYPE_1__* switchers; } ;
struct TYPE_4__ {int mode; scalar_t__ disable; } ;
typedef int Mode ;
typedef TYPE_2__ CombiModePrivateData ;


 TYPE_2__* mode_get_private_data (int const*) ;
 int mode_token_match (int ,int **,unsigned int) ;

__attribute__((used)) static int combi_mode_match ( const Mode *sw, rofi_int_matcher **tokens, unsigned int index )
{
    CombiModePrivateData *pd = mode_get_private_data ( sw );
    for ( unsigned i = 0; i < pd->num_switchers; i++ ) {
        if ( pd->switchers[i].disable ) {
            continue;
        }
        if ( index >= pd->starts[i] && index < ( pd->starts[i] + pd->lengths[i] ) ) {
            return mode_token_match ( pd->switchers[i].mode, tokens, index - pd->starts[i] );
        }
    }
    return 0;
}
