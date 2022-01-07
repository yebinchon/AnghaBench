
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int wchar_t ;
struct _cms_typehandler_struct {int dummy; } ;
typedef int cmsUInt32Number ;
typedef int cmsUInt16Number ;
struct TYPE_6__ {int UsedEntries; int PoolSize; int PoolUsed; int * MemPool; TYPE_1__* Entries; } ;
typedef TYPE_2__ cmsMLU ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;
typedef int _cmsTagBase ;
struct TYPE_5__ {int Len; int StrW; int Country; int Language; } ;


 scalar_t__ _cmsMalloc (int ,int) ;
 int _cmsReadUInt16Number (int ,int *,int *) ;
 int _cmsReadUInt32Number (int ,int *,int*) ;
 int _cmsReadWCharArray (int ,int *,int,int *) ;
 int cmsERROR_UNKNOWN_EXTENSION ;
 TYPE_2__* cmsMLUalloc (int ,int) ;
 int cmsMLUfree (int ,TYPE_2__*) ;
 int cmsSignalError (int ,int ,char*) ;
 int cmsUNUSED_PARAMETER (struct _cms_typehandler_struct*) ;

__attribute__((used)) static
void *Type_MLU_Read(cmsContext ContextID, struct _cms_typehandler_struct* self, cmsIOHANDLER* io, cmsUInt32Number* nItems, cmsUInt32Number SizeOfTag)
{
    cmsMLU* mlu;
    cmsUInt32Number Count, RecLen, NumOfWchar;
    cmsUInt32Number SizeOfHeader;
    cmsUInt32Number Len, Offset;
    cmsUInt32Number i;
    wchar_t* Block;
    cmsUInt32Number BeginOfThisString, EndOfThisString, LargestPosition;
    cmsUNUSED_PARAMETER(self);

    *nItems = 0;
    if (!_cmsReadUInt32Number(ContextID, io, &Count)) return ((void*)0);
    if (!_cmsReadUInt32Number(ContextID, io, &RecLen)) return ((void*)0);

    if (RecLen != 12) {

        cmsSignalError(ContextID, cmsERROR_UNKNOWN_EXTENSION, "multiLocalizedUnicodeType of len != 12 is not supported.");
        return ((void*)0);
    }

    mlu = cmsMLUalloc(ContextID, Count);
    if (mlu == ((void*)0)) return ((void*)0);

    mlu ->UsedEntries = Count;

    SizeOfHeader = 12 * Count + sizeof(_cmsTagBase);
    LargestPosition = 0;

    for (i=0; i < Count; i++) {

        if (!_cmsReadUInt16Number(ContextID, io, &mlu ->Entries[i].Language)) goto Error;
        if (!_cmsReadUInt16Number(ContextID, io, &mlu ->Entries[i].Country)) goto Error;


        if (!_cmsReadUInt32Number(ContextID, io, &Len)) goto Error;
        if (!_cmsReadUInt32Number(ContextID, io, &Offset)) goto Error;


        if (Offset < (SizeOfHeader + 8)) goto Error;
        if (((Offset + Len) < Len) || ((Offset + Len) > SizeOfTag + 8)) goto Error;


        BeginOfThisString = Offset - SizeOfHeader - 8;


        mlu ->Entries[i].Len = (Len * sizeof(wchar_t)) / sizeof(cmsUInt16Number);
        mlu ->Entries[i].StrW = (BeginOfThisString * sizeof(wchar_t)) / sizeof(cmsUInt16Number);


        EndOfThisString = BeginOfThisString + Len;
        if (EndOfThisString > LargestPosition)
            LargestPosition = EndOfThisString;
    }


    SizeOfTag = (LargestPosition * sizeof(wchar_t)) / sizeof(cmsUInt16Number);
    if (SizeOfTag == 0)
    {
        Block = ((void*)0);
        NumOfWchar = 0;

    }
    else
    {
        Block = (wchar_t*) _cmsMalloc(ContextID, SizeOfTag);
        if (Block == ((void*)0)) goto Error;
        NumOfWchar = SizeOfTag / sizeof(wchar_t);
        if (!_cmsReadWCharArray(ContextID, io, NumOfWchar, Block)) goto Error;
    }

    mlu ->MemPool = Block;
    mlu ->PoolSize = SizeOfTag;
    mlu ->PoolUsed = SizeOfTag;

    *nItems = 1;
    return (void*) mlu;

Error:
    if (mlu) cmsMLUfree(ContextID, mlu);
    return ((void*)0);
}
