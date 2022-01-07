
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char WCHAR ;
struct TYPE_8__ {int db; } ;
struct TYPE_7__ {int hdr; } ;
typedef TYPE_1__ MSIQUERY ;
typedef TYPE_2__ MSIPACKAGE ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int MSI_DatabaseOpenViewW (int ,char const*,TYPE_1__**) ;
 int MSI_IterateRecords (TYPE_1__*,scalar_t__*,int *,TYPE_2__*) ;
 int msiobj_release (int *) ;

__attribute__((used)) static BOOL ui_sequence_exists( MSIPACKAGE *package )
{
    static const WCHAR query [] = {
        'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
        '`','I','n','s','t','a','l','l','U','I','S','e','q','u','e','n','c','e','`',' ',
        'W','H','E','R','E',' ','`','S','e','q','u','e','n','c','e','`',' ','>',' ','0',0};
    MSIQUERY *view;
    DWORD count = 0;

    if (!(MSI_DatabaseOpenViewW( package->db, query, &view )))
    {
        MSI_IterateRecords( view, &count, ((void*)0), package );
        msiobj_release( &view->hdr );
    }
    return count != 0;
}
