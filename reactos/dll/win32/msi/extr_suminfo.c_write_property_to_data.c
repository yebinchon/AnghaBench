
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int pszVal; int filetime; int lVal; int iVal; } ;
struct TYPE_5__ {TYPE_1__ u; int vt; } ;
typedef TYPE_2__ PROPVARIANT ;
typedef int LPBYTE ;
typedef int DWORD ;


 int VT_EMPTY ;




 scalar_t__ write_dword (int ,int ,int ) ;
 int write_filetime (int ,int ,int *) ;
 int write_string (int ,int ,int ) ;

__attribute__((used)) static UINT write_property_to_data( const PROPVARIANT *prop, LPBYTE data )
{
    DWORD sz = 0;

    if( prop->vt == VT_EMPTY )
        return sz;


    sz += write_dword( data, sz, prop->vt );
    switch( prop->vt )
    {
    case 130:
        sz += write_dword( data, sz, prop->u.iVal );
        break;
    case 129:
        sz += write_dword( data, sz, prop->u.lVal );
        break;
    case 131:
        sz += write_filetime( data, sz, &prop->u.filetime );
        break;
    case 128:
        sz += write_string( data, sz, prop->u.pszVal );
        break;
    }
    return sz;
}
