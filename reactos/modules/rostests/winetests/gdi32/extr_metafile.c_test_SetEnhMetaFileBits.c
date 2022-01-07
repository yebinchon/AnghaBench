
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int data ;
struct TYPE_5__ {int nSize; int nBytes; int nHandles; scalar_t__ dSignature; int iType; } ;
typedef int * HENHMETAFILE ;
typedef TYPE_1__ ENHMETAHEADER ;
typedef TYPE_1__ BYTE ;


 int DeleteEnhMetaFile (int *) ;
 int EMR_HEADER ;
 scalar_t__ ENHMETA_SIGNATURE ;
 int ERROR_INVALID_DATA ;
 int ERROR_INVALID_PARAMETER ;
 int GetLastError () ;
 int * SetEnhMetaFileBits (int,TYPE_1__*) ;
 int SetLastError (int) ;
 scalar_t__ broken (int ) ;
 int memset (TYPE_1__*,int,int) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_SetEnhMetaFileBits(void)
{
    BYTE data[256];
    HENHMETAFILE hemf;
    ENHMETAHEADER *emh;

    memset(data, 0xAA, sizeof(data));
    SetLastError(0xdeadbeef);
    hemf = SetEnhMetaFileBits(sizeof(data), data);
    ok(!hemf, "SetEnhMetaFileBits should fail\n");
    ok(GetLastError() == ERROR_INVALID_DATA ||
       GetLastError() == ERROR_INVALID_PARAMETER,
       "expected ERROR_INVALID_DATA or ERROR_INVALID_PARAMETER, got %u\n", GetLastError());

    emh = (ENHMETAHEADER *)data;
    memset(emh, 0, sizeof(*emh));

    emh->iType = EMR_HEADER;
    emh->nSize = sizeof(*emh);
    emh->dSignature = ENHMETA_SIGNATURE;

    emh->nBytes = sizeof(*emh);

    emh->nHandles = 1;

    SetLastError(0xdeadbeef);
    hemf = SetEnhMetaFileBits(emh->nBytes, data);
    ok(hemf != 0, "SetEnhMetaFileBits error %u\n", GetLastError());
    DeleteEnhMetaFile(hemf);


    emh->nBytes++;
    SetLastError(0xdeadbeef);
    hemf = SetEnhMetaFileBits(emh->nBytes, data);
    ok(!hemf ||
       broken(hemf != ((void*)0)),
       "SetEnhMetaFileBits should fail\n");
    ok(GetLastError() == 0xdeadbeef, "Expected deadbeef, got %u\n", GetLastError());
    DeleteEnhMetaFile(hemf);

    emh->dSignature = 0;
    emh->nBytes--;
    SetLastError(0xdeadbeef);
    hemf = SetEnhMetaFileBits(emh->nBytes, data);
    ok(!hemf ||
       broken(hemf != ((void*)0)),
       "SetEnhMetaFileBits should fail\n");
    ok(GetLastError() == 0xdeadbeef, "Expected deadbeef, got %u\n", GetLastError());
    DeleteEnhMetaFile(hemf);
}
