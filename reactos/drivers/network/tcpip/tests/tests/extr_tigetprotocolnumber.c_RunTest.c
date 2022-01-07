
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef int PULONG ;


 int RtlInitUnicodeString (int *,char*) ;
 int TiGetProtocolNumber (int *,int ) ;
 int _AssertEqualValue (int,int) ;

__attribute__((used)) static void RunTest() {
    UNICODE_STRING Str;
    int Proto;
    RtlInitUnicodeString( &Str, L"1" );
    TiGetProtocolNumber( &Str, (PULONG)&Proto );
    _AssertEqualValue(1, Proto);
}
