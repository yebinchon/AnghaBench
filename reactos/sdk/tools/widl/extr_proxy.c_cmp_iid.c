
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int attrs; } ;
typedef TYPE_1__ type_t ;
typedef int UUID ;


 int ATTR_UUID ;
 int * get_attrp (int ,int ) ;
 int memcmp (int const*,int const*,int) ;

__attribute__((used)) static int cmp_iid( const void *ptr1, const void *ptr2 )
{
    const type_t * const *iface1 = ptr1;
    const type_t * const *iface2 = ptr2;
    const UUID *uuid1 = get_attrp( (*iface1)->attrs, ATTR_UUID );
    const UUID *uuid2 = get_attrp( (*iface2)->attrs, ATTR_UUID );
    return memcmp( uuid1, uuid2, sizeof(UUID) );
}
