
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {scalar_t__ vt; } ;
typedef TYPE_1__ PROPVARIANT ;


 size_t MSI_MAX_PROPS ;
 scalar_t__ VT_EMPTY ;

__attribute__((used)) static UINT get_property_count( const PROPVARIANT *property )
{
    UINT i, n = 0;

    if( !property )
        return n;
    for( i = 0; i < MSI_MAX_PROPS; i++ )
        if( property[i].vt != VT_EMPTY )
            n++;
    return n;
}
