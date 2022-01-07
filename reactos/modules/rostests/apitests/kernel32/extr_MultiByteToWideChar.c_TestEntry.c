
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {scalar_t__ DestLen; char const* Src; int CheckLen; int Return; int * CheckDest; int LineNo; int Error; int SrcLen; int Flags; int CodePage; scalar_t__ SamePointer; } ;
typedef TYPE_1__ ENTRY ;
typedef int DWORD ;
typedef int Buffer ;


 int FillMemory (int *,int,int) ;
 int GetLastError () ;
 int MAX_BUFFER ;
 int MultiByteToWideChar (int ,int ,char const*,int ,int *,int) ;
 int SetLastError (int) ;
 int ok (int,char*,int ,...) ;

__attribute__((used)) static void TestEntry(const ENTRY *pEntry)
{
    int ret, i;
    WCHAR Buffer[MAX_BUFFER];
    DWORD Error;

    FillMemory(Buffer, sizeof(Buffer), 0x7F);
    SetLastError(0xBEAF);

    if (pEntry->DestLen == 0)
    {

        ret = MultiByteToWideChar(pEntry->CodePage, pEntry->Flags, pEntry->Src,
                                  pEntry->SrcLen, ((void*)0), 0);
    }
    else
    {
        ok(pEntry->DestLen >= pEntry->CheckLen - 1,
           "Line %d: DestLen was shorter than (CheckLen - 1)\n", pEntry->LineNo);

        if (pEntry->SamePointer)
        {

            ret = MultiByteToWideChar(pEntry->CodePage, pEntry->Flags,
                                      (const char *)Buffer, pEntry->SrcLen,
                                      Buffer, pEntry->DestLen);
        }
        else
        {

            ret = MultiByteToWideChar(pEntry->CodePage, pEntry->Flags,
                                      pEntry->Src, pEntry->SrcLen,
                                      Buffer, pEntry->DestLen);
        }
    }

    Error = GetLastError();


    ok(ret == pEntry->Return, "Line %d: ret expected %d, got %d\n",
       pEntry->LineNo, pEntry->Return, ret);


    ok(Error == pEntry->Error,
       "Line %d: Wrong last error. Expected %lu, got %lu\n",
       pEntry->LineNo, pEntry->Error, Error);

    if (pEntry->DestLen)
    {

        for (i = 0; i < pEntry->CheckLen; ++i)
        {
            ok(Buffer[i] == pEntry->CheckDest[i], "Line %d: Buffer[%d] expected %d, got %d\n",
               pEntry->LineNo, i, pEntry->CheckDest[i], Buffer[i]);
        }
    }
}
