
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int REFGUID ;
typedef int InterfaceW ;


 int StringFromGUID2 (int ,char*,int) ;
 int memcpy (char*,char const*,int) ;
 int strlenW (char*) ;

__attribute__((used)) static WCHAR *get_interface_key( REFGUID guid, WCHAR *buffer )
{
    static const WCHAR InterfaceW[] = {'I','n','t','e','r','f','a','c','e','\\',0};

    memcpy( buffer, InterfaceW, sizeof(InterfaceW) );
    StringFromGUID2( guid, buffer + strlenW(buffer), 40 );
    return buffer;
}
