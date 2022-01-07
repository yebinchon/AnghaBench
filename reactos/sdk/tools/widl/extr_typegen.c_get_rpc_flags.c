
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int attr_list_t ;


 int ATTR_ASYNC ;
 int ATTR_BROADCAST ;
 int ATTR_IDEMPOTENT ;
 int ATTR_MAYBE ;
 int ATTR_MESSAGE ;
 scalar_t__ is_attr (int const*,int ) ;

__attribute__((used)) static unsigned int get_rpc_flags( const attr_list_t *attrs )
{
    unsigned int flags = 0;

    if (is_attr( attrs, ATTR_IDEMPOTENT )) flags |= 0x0001;
    if (is_attr( attrs, ATTR_BROADCAST )) flags |= 0x0002;
    if (is_attr( attrs, ATTR_MAYBE )) flags |= 0x0004;
    if (is_attr( attrs, ATTR_MESSAGE )) flags |= 0x0100;
    if (is_attr( attrs, ATTR_ASYNC )) flags |= 0x4000;
    return flags;
}
