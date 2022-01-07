
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int MSIRECORD ;
typedef int DWORD ;


 int MSI_RecordGetFieldCount (int const*) ;
 char* msi_alloc (int) ;
 int msi_free (char*) ;
 char* msi_realloc (char*,int) ;
 scalar_t__ sprintfW (char*,char const*,int,int) ;
 int strcatW (char*,char*) ;

__attribute__((used)) static WCHAR *build_default_format( const MSIRECORD *record )
{
    static const WCHAR fmt[] = {'%','i',':',' ','[','%','i',']',' ',0};
    int i, count = MSI_RecordGetFieldCount( record );
    WCHAR *ret, *tmp, buf[26];
    DWORD size = 1;

    if (!(ret = msi_alloc( sizeof(*ret) ))) return ((void*)0);
    ret[0] = 0;

    for (i = 1; i <= count; i++)
    {
        size += sprintfW( buf, fmt, i, i );
        if (!(tmp = msi_realloc( ret, size * sizeof(*ret) )))
        {
            msi_free( ret );
            return ((void*)0);
        }
        ret = tmp;
        strcatW( ret, buf );
    }
    return ret;
}
