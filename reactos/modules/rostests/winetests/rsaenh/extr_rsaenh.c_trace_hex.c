
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;


 int sprintf (char*,char*,int) ;
 int trace (char*,...) ;

__attribute__((used)) static void trace_hex(BYTE *pbData, DWORD dwLen) {
    char szTemp[256];
    DWORD i, j;

    for (i = 0; i < dwLen-7; i+=8) {
        trace("0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x, 0x%02x,\n",
              pbData[i], pbData[i+1], pbData[i+2], pbData[i+3], pbData[i+4], pbData[i+5],
              pbData[i+6], pbData[i+7]);
    }
    for (j=0; i<dwLen; j++,i++) {
        sprintf(szTemp+6*j, "0x%02x, ", pbData[i]);
    }
    if (j)
        trace("%s\n", szTemp);
}
