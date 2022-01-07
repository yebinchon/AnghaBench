
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int next; } ;
typedef TYPE_1__ cc_storage_t ;


 int CC_PAYLOAD_GA94 ;
 int cc_Extract (int *,int ,int,int const*,size_t) ;

void cc_storage_append( cc_storage_t *p_ccs, bool b_top_field_first,
                        const uint8_t *p_buf, size_t i_buf )
{
    cc_Extract( &p_ccs->next, CC_PAYLOAD_GA94, b_top_field_first, p_buf, i_buf );
}
