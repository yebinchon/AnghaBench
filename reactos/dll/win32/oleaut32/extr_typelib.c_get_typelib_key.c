
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;
typedef char WCHAR ;
typedef int TypelibW ;
typedef int REFGUID ;


 int StringFromGUID2 (int ,char*,int) ;
 int memcpy (char*,char const*,int) ;
 int sprintfW (char*,char const*,int ,int ) ;
 int strlenW (char*) ;

__attribute__((used)) static WCHAR *get_typelib_key( REFGUID guid, WORD wMaj, WORD wMin, WCHAR *buffer )
{
    static const WCHAR TypelibW[] = {'T','y','p','e','l','i','b','\\',0};
    static const WCHAR VersionFormatW[] = {'\\','%','x','.','%','x',0};

    memcpy( buffer, TypelibW, sizeof(TypelibW) );
    StringFromGUID2( guid, buffer + strlenW(buffer), 40 );
    sprintfW( buffer + strlenW(buffer), VersionFormatW, wMaj, wMin );
    return buffer;
}
