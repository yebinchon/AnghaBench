
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UUID ;
typedef scalar_t__ RPC_STATUS ;
typedef char* LPWSTR ;
typedef char* LPSTR ;
typedef char CHAR ;


 scalar_t__ RPC_S_INVALID_STRING_UUID ;
 scalar_t__ RPC_S_OK ;
 int RpcStringFreeA (unsigned char**) ;
 int RpcStringFreeW (char**) ;
 int UuidEqual (int *,int *,scalar_t__*) ;
 scalar_t__ UuidFromStringA (unsigned char*,int *) ;
 scalar_t__ UuidFromStringW (char*,int *) ;
 scalar_t__ UuidToStringA (int *,unsigned char**) ;
 scalar_t__ UuidToStringW (int *,char**) ;
 int** Uuid_Comparison_Grid ;
 int * Uuid_Table ;
 int ok (int,char*) ;

__attribute__((used)) static void UuidConversionAndComparison(void) {
    CHAR strx[100], x;
    LPSTR str = strx;
    WCHAR wstrx[100], wx;
    LPWSTR wstr = wstrx;

    UUID Uuid1, Uuid2, *PUuid1, *PUuid2;
    RPC_STATUS rslt;

    int i1,i2;


    for (i1 = 0; i1 < 11; i1++)
        for (i2 = 0; i2 < 11; i2++) {
     if (i1 < 10) {
         Uuid1 = Uuid_Table[i1];
  PUuid1 = &Uuid1;
            } else {
         PUuid1 = ((void*)0);
     }
     if (i2 < 10) {
         Uuid2 = Uuid_Table[i2];
  PUuid2 = &Uuid2;
            } else {
         PUuid2 = ((void*)0);
     }
     ok( (UuidEqual(PUuid1, PUuid2, &rslt) == Uuid_Comparison_Grid[i1][i2]), "UUID Equality\n" );
        }


    for (i1 = 0; i1 < 10; i1++) {
        Uuid1 = Uuid_Table[i1];
 ok( (UuidToStringA(&Uuid1, (unsigned char**)&str) == RPC_S_OK), "Simple UUID->String copy\n" );
 ok( (UuidFromStringA((unsigned char*)str, &Uuid2) == RPC_S_OK), "Simple String->UUID copy from generated UUID String\n" );
 ok( UuidEqual(&Uuid1, &Uuid2, &rslt), "Uuid -> String -> Uuid transform\n" );

 for (i2 = 0; i2 < 36; i2++) {
     x = str[i2];
     str[i2] = 'g';
     ok( (UuidFromStringA((unsigned char*)str, &Uuid1) == RPC_S_INVALID_STRING_UUID), "Invalid UUID String\n" );
     str[i2] = x;
 }
 RpcStringFreeA((unsigned char **)&str);
    }


    for (i1 = 0; i1 < 10; i1++) {
        Uuid1 = Uuid_Table[i1];
        rslt=UuidToStringW(&Uuid1, &wstr);
        ok( (rslt == RPC_S_OK), "Simple UUID->WString copy\n" );
        ok( (UuidFromStringW(wstr, &Uuid2) == RPC_S_OK), "Simple WString->UUID copy from generated UUID String\n" );
        ok( UuidEqual(&Uuid1, &Uuid2, &rslt), "Uuid -> WString -> Uuid transform\n" );

 for (i2 = 0; i2 < 36; i2++) {
     wx = wstr[i2];
     wstr[i2] = 'g';
     ok( (UuidFromStringW(wstr, &Uuid1) == RPC_S_INVALID_STRING_UUID), "Invalid UUID WString\n" );
     wstr[i2] = wx;
 }
 RpcStringFreeW(&wstr);
    }
}
