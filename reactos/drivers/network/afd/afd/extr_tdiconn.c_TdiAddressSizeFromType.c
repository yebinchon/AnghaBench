
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int DbgPrint (char*,int) ;
 int TDI_ADDRESS_LENGTH_APPLETALK ;
 int TDI_ADDRESS_LENGTH_IP ;
 int TDI_ADDRESS_LENGTH_IPX ;
 int TDI_ADDRESS_LENGTH_NETBIOS ;
 int TDI_ADDRESS_LENGTH_VNS ;






UINT TdiAddressSizeFromType( UINT AddressType ) {
    switch( AddressType ) {
    case 131:
        return TDI_ADDRESS_LENGTH_IP;
    case 132:
        return TDI_ADDRESS_LENGTH_APPLETALK;
    case 129:
        return TDI_ADDRESS_LENGTH_NETBIOS;

    case 130:
        return TDI_ADDRESS_LENGTH_IPX;
    case 128:
        return TDI_ADDRESS_LENGTH_VNS;
    default:
        DbgPrint("TdiAddressSizeFromType - invalid type: %x\n", AddressType);
        return 0;
    }
}
