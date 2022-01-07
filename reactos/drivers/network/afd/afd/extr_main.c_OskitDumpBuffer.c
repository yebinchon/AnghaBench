
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int UINT ;
typedef int* PCHAR ;


 int DbgPrint (char*,...) ;

void OskitDumpBuffer( PCHAR Data, UINT Len ) {
    unsigned int i;

    for( i = 0; i < Len; i++ ) {
        if( i && !(i & 0xf) ) DbgPrint( "\n" );
        if( !(i & 0xf) ) DbgPrint( "%p: ", (Data + i) );
        DbgPrint( " %02x", Data[i] & 0xff );
    }
    DbgPrint("\n");
}
