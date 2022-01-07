
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pszVal; } ;
struct TYPE_5__ {scalar_t__ vt; TYPE_1__ u; } ;
typedef TYPE_2__ PROPVARIANT ;


 scalar_t__ VT_EMPTY ;
 scalar_t__ VT_LPSTR ;
 int msi_free (int ) ;

__attribute__((used)) static void free_prop( PROPVARIANT *prop )
{
    if (prop->vt == VT_LPSTR )
        msi_free( prop->u.pszVal );
    prop->vt = VT_EMPTY;
}
