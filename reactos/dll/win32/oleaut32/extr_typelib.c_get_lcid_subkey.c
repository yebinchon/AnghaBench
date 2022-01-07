
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int SYSKIND ;
typedef int LCID ;





 int TRACE (char*,int) ;
 int sprintfW (char*,char const*,int ) ;
 int strcatW (char*,char const*) ;

__attribute__((used)) static WCHAR *get_lcid_subkey( LCID lcid, SYSKIND syskind, WCHAR *buffer )
{
    static const WCHAR LcidFormatW[] = {'%','l','x','\\',0};
    static const WCHAR win16W[] = {'w','i','n','1','6',0};
    static const WCHAR win32W[] = {'w','i','n','3','2',0};
    static const WCHAR win64W[] = {'w','i','n','6','4',0};

    sprintfW( buffer, LcidFormatW, lcid );
    switch(syskind)
    {
    case 130: strcatW( buffer, win16W ); break;
    case 129: strcatW( buffer, win32W ); break;
    case 128: strcatW( buffer, win64W ); break;
    default:
        TRACE("Typelib is for unsupported syskind %i\n", syskind);
        return ((void*)0);
    }
    return buffer;
}
