#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;
struct TYPE_3__ {int /*<<< orphan*/  DisplayValue; int /*<<< orphan*/  DisplayName; int /*<<< orphan*/  Value; int /*<<< orphan*/  Name; } ;
typedef  TYPE_1__ _cmsDICarray ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static
cmsBool FUNC1(cmsContext ContextID, cmsIOHANDLER* io,  _cmsDICarray* a, cmsUInt32Number Count, cmsUInt32Number Length)
{
    cmsUInt32Number i;

    for (i=0; i < Count; i++) {

        if (!FUNC0(ContextID, io, &a -> Name, i)) return FALSE;
        if (!FUNC0(ContextID, io, &a -> Value, i))  return FALSE;

        if (Length > 16) {

            if (!FUNC0(ContextID, io, &a -> DisplayName, i))  return FALSE;
        }

        if (Length > 24) {

            if (!FUNC0(ContextID, io, &a -> DisplayValue, i))  return FALSE;
        }
    }

    return TRUE;
}