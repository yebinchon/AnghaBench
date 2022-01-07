
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ifacepsredirect_data {int dummy; } ;
struct guid_index {int data_offset; } ;
struct TYPE_3__ {scalar_t__ ifaceps_section; } ;
typedef int BYTE ;
typedef TYPE_1__ ACTIVATION_CONTEXT ;



__attribute__((used)) static inline struct ifacepsredirect_data *get_ifaceps_data(ACTIVATION_CONTEXT *actctx, struct guid_index *index)
{
    return (struct ifacepsredirect_data*)((BYTE*)actctx->ifaceps_section + index->data_offset);
}
