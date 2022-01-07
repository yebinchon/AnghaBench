
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_10__ {int hdr; } ;
struct TYPE_9__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef TYPE_2__ MSIQUERY ;
typedef int MSIDATABASE ;


 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ MSI_DatabaseOpenViewW (int *,char const*,TYPE_2__**) ;
 int MSI_RecordGetString (TYPE_1__*,int) ;
 int MSI_ViewClose (TYPE_2__*) ;
 scalar_t__ MSI_ViewExecute (TYPE_2__*,int ) ;
 scalar_t__ MSI_ViewFetch (TYPE_2__*,TYPE_1__**) ;
 int msiobj_release (int *) ;
 char* strdupW (int ) ;

__attribute__((used)) static WCHAR *get_product_code( MSIDATABASE *db )
{
    static const WCHAR query[] = {
        'S','E','L','E','C','T',' ','`','V','a','l','u','e','`',' ',
        'F','R','O','M',' ','`','P','r','o','p','e','r','t','y','`',' ',
        'W','H','E','R','E',' ','`','P','r','o','p','e','r','t','y','`','=',
        '\'','P','r','o','d','u','c','t','C','o','d','e','\'',0};
    MSIQUERY *view;
    MSIRECORD *rec;
    WCHAR *ret = ((void*)0);

    if (MSI_DatabaseOpenViewW( db, query, &view ) != ERROR_SUCCESS)
    {
        return ((void*)0);
    }
    if (MSI_ViewExecute( view, 0 ) != ERROR_SUCCESS)
    {
        MSI_ViewClose( view );
        msiobj_release( &view->hdr );
        return ((void*)0);
    }
    if (MSI_ViewFetch( view, &rec ) == ERROR_SUCCESS)
    {
        ret = strdupW( MSI_RecordGetString( rec, 1 ) );
        msiobj_release( &rec->hdr );
    }
    MSI_ViewClose( view );
    msiobj_release( &view->hdr );
    return ret;
}
