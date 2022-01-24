#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  data ;
struct TYPE_5__ {int nSize; int nBytes; int nHandles; scalar_t__ dSignature; int /*<<< orphan*/  iType; } ;
typedef  int /*<<< orphan*/ * HENHMETAFILE ;
typedef  TYPE_1__ ENHMETAHEADER ;
typedef  TYPE_1__ BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EMR_HEADER ; 
 scalar_t__ ENHMETA_SIGNATURE ; 
 int ERROR_INVALID_DATA ; 
 int ERROR_INVALID_PARAMETER ; 
 int FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 

__attribute__((used)) static void FUNC7(void)
{
    BYTE data[256];
    HENHMETAFILE hemf;
    ENHMETAHEADER *emh;

    FUNC5(data, 0xAA, sizeof(data));
    FUNC3(0xdeadbeef);
    hemf = FUNC2(sizeof(data), data);
    FUNC6(!hemf, "SetEnhMetaFileBits should fail\n");
    FUNC6(FUNC1() == ERROR_INVALID_DATA ||
       FUNC1() == ERROR_INVALID_PARAMETER, /* Win9x, WinMe */
       "expected ERROR_INVALID_DATA or ERROR_INVALID_PARAMETER, got %u\n", FUNC1());

    emh = (ENHMETAHEADER *)data;
    FUNC5(emh, 0, sizeof(*emh));

    emh->iType = EMR_HEADER;
    emh->nSize = sizeof(*emh);
    emh->dSignature = ENHMETA_SIGNATURE;
    /* emh->nVersion  = 0x10000; XP doesn't care about version */
    emh->nBytes = sizeof(*emh);
    /* emh->nRecords = 1; XP doesn't care about records */
    emh->nHandles = 1; /* XP refuses to load a EMF if nHandles == 0 */

    FUNC3(0xdeadbeef);
    hemf = FUNC2(emh->nBytes, data);
    FUNC6(hemf != 0, "SetEnhMetaFileBits error %u\n", FUNC1());
    FUNC0(hemf);

    /* XP refuses to load unaligned EMF */
    emh->nBytes++;
    FUNC3(0xdeadbeef);
    hemf = FUNC2(emh->nBytes, data);
    FUNC6(!hemf ||
       FUNC4(hemf != NULL), /* Win9x, WinMe */
       "SetEnhMetaFileBits should fail\n");
    FUNC6(FUNC1() == 0xdeadbeef, "Expected deadbeef, got %u\n", FUNC1());
    FUNC0(hemf);

    emh->dSignature = 0;
    emh->nBytes--;
    FUNC3(0xdeadbeef);
    hemf = FUNC2(emh->nBytes, data);
    FUNC6(!hemf ||
       FUNC4(hemf != NULL), /* Win9x, WinMe */
       "SetEnhMetaFileBits should fail\n");
    FUNC6(FUNC1() == 0xdeadbeef, "Expected deadbeef, got %u\n", FUNC1());
    FUNC0(hemf);
}