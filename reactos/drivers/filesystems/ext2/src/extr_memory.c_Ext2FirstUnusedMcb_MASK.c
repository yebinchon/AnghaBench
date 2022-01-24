#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_14__ {scalar_t__ QuadPart; } ;
struct TYPE_13__ {scalar_t__ Refercount; int /*<<< orphan*/  Link; struct TYPE_13__* Next; int /*<<< orphan*/  Flags; int /*<<< orphan*/ * Child; int /*<<< orphan*/ * Fcb; } ;
struct TYPE_12__ {scalar_t__ NumOfMcb; int /*<<< orphan*/  McbLock; int /*<<< orphan*/  McbList; } ;
typedef  int /*<<< orphan*/ * PLIST_ENTRY ;
typedef  TYPE_1__* PEXT2_VCB ;
typedef  TYPE_2__* PEXT2_MCB ;
typedef  int LONGLONG ;
typedef  TYPE_3__ LARGE_INTEGER ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT2_MCB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  Link ; 
 int /*<<< orphan*/  MCB_VCB_LINK ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ TRUE ; 

PEXT2_MCB
FUNC14(PEXT2_VCB Vcb, BOOLEAN Wait, ULONG Number)
{
    PEXT2_MCB   Head = NULL;
    PEXT2_MCB   Tail = NULL;
    PEXT2_MCB   Mcb = NULL;
    PLIST_ENTRY List = NULL;
    ULONG       i = 0;
    LARGE_INTEGER   start, now;

    if (!FUNC3(&Vcb->McbLock, Wait)) {
        return NULL;
    }

    FUNC12(&start);

    while (Number--) {

        BOOLEAN     Skip = TRUE;

        if (FUNC9(&Vcb->McbList)) {
            break;
        }

        while (i++ < Vcb->NumOfMcb) {

            FUNC12(&now);
            if (now.QuadPart > start.QuadPart + (LONGLONG)10*1000*1000) {
                break;
            }

            List = FUNC13(&Vcb->McbList);
            Mcb = FUNC1(List, EXT2_MCB, Link);
            FUNC0(FUNC8(Mcb->Flags, MCB_VCB_LINK));

            if (Mcb->Fcb == NULL && !FUNC10(Mcb) &&
                    Mcb->Refercount == 0 &&
                    (Mcb->Child == NULL || FUNC11(Mcb))) {

                FUNC6(Vcb, Mcb);
                FUNC2(Mcb->Flags, MCB_VCB_LINK);
                FUNC5(&Vcb->NumOfMcb);

                /* attach all Mcb into a chain*/
                if (Head) {
                    FUNC0(Tail != NULL);
                    Tail->Next = Mcb;
                    Tail = Mcb;
                } else {
                    Head = Tail = Mcb;
                }
                Tail->Next = NULL;
                Skip = FALSE;

            } else {

                FUNC7(&Vcb->McbList, &Mcb->Link);
                Mcb = NULL;
            }
        }

        if (Skip)
            break;
    }

    FUNC4(&Vcb->McbLock);

    return Head;
}