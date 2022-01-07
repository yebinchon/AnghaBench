
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct guid_index {int data_offset; } ;
struct comclassredirect_data {int dummy; } ;
struct TYPE_3__ {scalar_t__ comserver_section; } ;
typedef int BYTE ;
typedef TYPE_1__ ACTIVATION_CONTEXT ;



__attribute__((used)) static inline struct comclassredirect_data *get_comclass_data(ACTIVATION_CONTEXT *actctx, struct guid_index *index)
{
    return (struct comclassredirect_data*)((BYTE*)actctx->comserver_section + index->data_offset);
}
