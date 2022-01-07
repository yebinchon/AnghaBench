
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;


 int NAME_ID_FULL_FONT_NAME ;
 int WARN (char*) ;
 char* load_ttf_name_id (char const*,int ) ;
 char* msi_alloc (int) ;
 int msi_free (char*) ;
 int strcatW (char*,char const*) ;
 int strcpyW (char*,char*) ;
 int strlenW (char const*) ;

__attribute__((used)) static WCHAR *font_name_from_file( const WCHAR *filename )
{
    static const WCHAR truetypeW[] = {' ','(','T','r','u','e','T','y','p','e',')',0};
    WCHAR *name, *ret = ((void*)0);

    if ((name = load_ttf_name_id( filename, NAME_ID_FULL_FONT_NAME )))
    {
        if (!name[0])
        {
            WARN("empty font name\n");
            msi_free( name );
            return ((void*)0);
        }
        ret = msi_alloc( (strlenW( name ) + strlenW( truetypeW ) + 1 ) * sizeof(WCHAR) );
        strcpyW( ret, name );
        strcatW( ret, truetypeW );
        msi_free( name );
    }
    return ret;
}
