#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_4__ {int /*<<< orphan*/  pszVal; int /*<<< orphan*/  filetime; int /*<<< orphan*/  lVal; int /*<<< orphan*/  iVal; } ;
struct TYPE_5__ {TYPE_1__ u; int /*<<< orphan*/  vt; } ;
typedef  TYPE_2__ PROPVARIANT ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  VT_EMPTY ; 
#define  VT_FILETIME 131 
#define  VT_I2 130 
#define  VT_I4 129 
#define  VT_LPSTR 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static UINT FUNC3( const PROPVARIANT *prop, LPBYTE data )
{
    DWORD sz = 0;

    if( prop->vt == VT_EMPTY )
        return sz;

    /* add the type */
    sz += FUNC0( data, sz, prop->vt );
    switch( prop->vt )
    {
    case VT_I2:
        sz += FUNC0( data, sz, prop->u.iVal );
        break;
    case VT_I4:
        sz += FUNC0( data, sz, prop->u.lVal );
        break;
    case VT_FILETIME:
        sz += FUNC1( data, sz, &prop->u.filetime );
        break;
    case VT_LPSTR:
        sz += FUNC2( data, sz, prop->u.pszVal );
        break;
    }
    return sz;
}