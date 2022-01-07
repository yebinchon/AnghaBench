
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int NAME_ID_VERSION ;
 int atoiW (char*) ;
 scalar_t__ isdigitW (char) ;
 char* load_ttf_name_id (char const*,int ) ;
 char* msi_alloc (int) ;
 int msi_free (char*) ;
 int sprintfW (char*,char const*,int,int) ;
 char* strchrW (char*,char) ;
 int strlenW (char const*) ;

WCHAR *msi_font_version_from_file( const WCHAR *filename )
{
    static const WCHAR fmtW[] = {'%','u','.','%','u','.','0','.','0',0};
    WCHAR *version, *p, *q, *ret = ((void*)0);

    if ((version = load_ttf_name_id( filename, NAME_ID_VERSION )))
    {
        int len, major = 0, minor = 0;
        if ((p = strchrW( version, ';' ))) *p = 0;
        p = version;
        while (*p && !isdigitW( *p )) p++;
        if ((q = strchrW( p, '.' )))
        {
            major = atoiW( p );
            p = ++q;
            while (*q && isdigitW( *q )) q++;
            if (!*q || *q == ' ') minor = atoiW( p );
            else major = 0;
        }
        len = strlenW( fmtW ) + 20;
        ret = msi_alloc( len * sizeof(WCHAR) );
        sprintfW( ret, fmtW, major, minor );
        msi_free( version );
    }
    return ret;
}
