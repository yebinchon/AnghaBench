
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_9__ {int hdr; } ;
struct TYPE_8__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef TYPE_2__ MSIQUERY ;
typedef int MSIDATABASE ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int FIXME (char*) ;
 scalar_t__ MSI_DatabaseOpenViewW (int *,char const*,TYPE_2__**) ;
 char* MSI_RecordGetString (TYPE_1__*,int) ;
 scalar_t__ MSI_ViewExecute (TYPE_2__*,int ) ;
 scalar_t__ MSI_ViewFetch (TYPE_2__*,TYPE_1__**) ;
 int atoiW (char const*) ;
 int msiobj_release (int *) ;

__attribute__((used)) static DWORD is_uninstallable( MSIDATABASE *db )
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','`','V','a','l','u','e','`',' ','F','R','O','M',' ',
        '`','M','s','i','P','a','t','c','h','M','e','t','a','d','a','t','a','`',' ',
        'W','H','E','R','E',' ','`','C','o','m','p','a','n','y','`',' ','I','S',' ',
        'N','U','L','L',' ','A','N','D',' ','`','P','r','o','p','e','r','t','y','`','=',
        '\'','A','l','l','o','w','R','e','m','o','v','a','l','\'',0};
    MSIQUERY *view;
    MSIRECORD *rec;
    DWORD ret = 0;

    if (MSI_DatabaseOpenViewW( db, query, &view ) != ERROR_SUCCESS) return 0;
    if (MSI_ViewExecute( view, 0 ) != ERROR_SUCCESS)
    {
        msiobj_release( &view->hdr );
        return 0;
    }

    if (MSI_ViewFetch( view, &rec ) == ERROR_SUCCESS)
    {
        const WCHAR *value = MSI_RecordGetString( rec, 1 );
        ret = atoiW( value );
        msiobj_release( &rec->hdr );
    }

    FIXME( "check other criteria\n" );

    msiobj_release( &view->hdr );
    return ret;
}
