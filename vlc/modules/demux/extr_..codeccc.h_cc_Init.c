
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int b_reorder; scalar_t__ i_payload_other_count; int i_payload_type; scalar_t__ i_data; scalar_t__ i_708channels; scalar_t__ i_608channels; } ;
typedef TYPE_1__ cc_data_t ;


 int CC_PAYLOAD_NONE ;

__attribute__((used)) static inline void cc_Init( cc_data_t *c )
{
    c->i_608channels = 0;
    c->i_708channels = 0;
    c->i_data = 0;
    c->b_reorder = 0;
    c->i_payload_type = CC_PAYLOAD_NONE;
    c->i_payload_other_count = 0;
}
