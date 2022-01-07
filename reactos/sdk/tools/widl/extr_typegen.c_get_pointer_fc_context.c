
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;
typedef enum type_context { ____Placeholder_type_context } type_context ;
typedef int attr_list_t ;


 int ATTR_OUT ;
 int FC_OP ;
 int FC_UP ;
 int TYPE_CONTEXT_PARAM ;
 int TYPE_CONTEXT_TOPLEVELPARAM ;
 int current_iface ;
 int get_pointer_fc (int const*,int const*,int) ;
 scalar_t__ is_attr (int const*,int ) ;
 scalar_t__ is_object (int ) ;

__attribute__((used)) static unsigned char get_pointer_fc_context( const type_t *type, const attr_list_t *attrs,
                                             enum type_context context )
{
    int pointer_fc = get_pointer_fc(type, attrs, context == TYPE_CONTEXT_TOPLEVELPARAM);

    if (pointer_fc == FC_UP && is_attr( attrs, ATTR_OUT ) &&
        context == TYPE_CONTEXT_PARAM && is_object( current_iface ))
        pointer_fc = FC_OP;

    return pointer_fc;
}
