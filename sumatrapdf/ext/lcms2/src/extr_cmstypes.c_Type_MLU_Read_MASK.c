#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct _cms_typehandler_struct {int dummy; } ;
typedef  int cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsUInt16Number ;
struct TYPE_6__ {int UsedEntries; int PoolSize; int PoolUsed; int /*<<< orphan*/ * MemPool; TYPE_1__* Entries; } ;
typedef  TYPE_2__ cmsMLU ;
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  _cmsTagBase ;
struct TYPE_5__ {int Len; int StrW; int /*<<< orphan*/  Country; int /*<<< orphan*/  Language; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsERROR_UNKNOWN_EXTENSION ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct _cms_typehandler_struct*) ; 

__attribute__((used)) static
void *FUNC8(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsMLU* mlu;
    cmsUInt32Number Count, RecLen, NumOfWchar;
    cmsUInt32Number SizeOfHeader;
    cmsUInt32Number  Len, Offset;
    cmsUInt32Number  i;
    wchar_t*         Block;
    cmsUInt32Number  BeginOfThisString, EndOfThisString, LargestPosition;
    FUNC7(self);

    *nItems = 0;
    if (!FUNC2(ContextID, io, &Count)) return NULL;
    if (!FUNC2(ContextID, io, &RecLen)) return NULL;

    if (RecLen != 12) {

        FUNC6(ContextID, cmsERROR_UNKNOWN_EXTENSION, "multiLocalizedUnicodeType of len != 12 is not supported.");
        return NULL;
    }

    mlu = FUNC4(ContextID, Count);
    if (mlu == NULL) return NULL;

    mlu ->UsedEntries = Count;

    SizeOfHeader = 12 * Count + sizeof(_cmsTagBase);
    LargestPosition = 0;

    for (i=0; i < Count; i++) {

        if (!FUNC1(ContextID, io, &mlu ->Entries[i].Language)) goto Error;
        if (!FUNC1(ContextID, io, &mlu ->Entries[i].Country))  goto Error;

        // Now deal with Len and offset.
        if (!FUNC2(ContextID, io, &Len)) goto Error;
        if (!FUNC2(ContextID, io, &Offset)) goto Error;

        // Check for overflow
        if (Offset < (SizeOfHeader + 8)) goto Error;
        if (((Offset + Len) < Len) || ((Offset + Len) > SizeOfTag + 8)) goto Error;

        // True begin of the string
        BeginOfThisString = Offset - SizeOfHeader - 8;

        // Adjust to wchar_t elements
        mlu ->Entries[i].Len = (Len * sizeof(wchar_t)) / sizeof(cmsUInt16Number);
        mlu ->Entries[i].StrW = (BeginOfThisString * sizeof(wchar_t)) / sizeof(cmsUInt16Number);

        // To guess maximum size, add offset + len
        EndOfThisString = BeginOfThisString + Len;
        if (EndOfThisString > LargestPosition)
            LargestPosition = EndOfThisString;
    }

    // Now read the remaining of tag and fill all strings. Subtract the directory
    SizeOfTag   = (LargestPosition * sizeof(wchar_t)) / sizeof(cmsUInt16Number);
    if (SizeOfTag == 0)
    {
        Block = NULL;
        NumOfWchar = 0;

    }
    else
    {
        Block = (wchar_t*) FUNC0(ContextID, SizeOfTag);
        if (Block == NULL) goto Error;
        NumOfWchar = SizeOfTag / sizeof(wchar_t);
        if (!FUNC3(ContextID, io, NumOfWchar, Block)) goto Error;
    }

    mlu ->MemPool  = Block;
    mlu ->PoolSize = SizeOfTag;
    mlu ->PoolUsed = SizeOfTag;

    *nItems = 1;
    return (void*) mlu;

Error:
    if (mlu) FUNC5(ContextID, mlu);
    return NULL;
}