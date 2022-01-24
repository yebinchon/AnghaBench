#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  on_disk; TYPE_1__* emh; } ;
struct TYPE_7__ {scalar_t__ iType; scalar_t__ dSignature; int nBytes; } ;
typedef  int /*<<< orphan*/  HENHMETAFILE ;
typedef  TYPE_1__ ENHMETAHEADER ;
typedef  TYPE_2__ ENHMETAFILEOBJ ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ EMR_HEADER ; 
 scalar_t__ ENHMETA_SIGNATURE ; 
 int /*<<< orphan*/  ERROR_INVALID_DATA ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  OBJ_ENHMETAFILE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

HENHMETAFILE FUNC6(ENHMETAHEADER *emh, BOOL on_disk )
{
    HENHMETAFILE hmf;
    ENHMETAFILEOBJ *metaObj;

    if (emh->iType != EMR_HEADER)
    {
        FUNC3(ERROR_INVALID_DATA);
        return 0;
    }
    if (emh->dSignature != ENHMETA_SIGNATURE ||
        (emh->nBytes & 3)) /* refuse to load unaligned EMF as Windows does */
    {
        FUNC4("Invalid emf header type 0x%08x sig 0x%08x.\n",
             emh->iType, emh->dSignature);
        return 0;
    }

    if (!(metaObj = FUNC1( FUNC0(), 0, sizeof(*metaObj) ))) return 0;

    metaObj->emh = emh;
    metaObj->on_disk = on_disk;

    if (!(hmf = FUNC5( metaObj, OBJ_ENHMETAFILE, NULL )))
        FUNC2( FUNC0(), 0, metaObj );
    return hmf;
}