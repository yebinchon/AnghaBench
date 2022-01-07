
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {int db; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef scalar_t__* LPWSTR ;
typedef scalar_t__* LPCWSTR ;
typedef int DWORD ;


 scalar_t__ ERROR_SUCCESS ;
 int TRACE (char*,int ,int ) ;
 int TRUE ;
 int debugstr_w (scalar_t__*) ;
 scalar_t__* msi_alloc (int) ;
 scalar_t__* msi_dup_property (int ,scalar_t__*) ;
 int msi_free (scalar_t__*) ;
 int msi_reset_folders (TYPE_1__*,int ) ;
 scalar_t__ msi_set_property (int ,scalar_t__*,scalar_t__*,int) ;
 int strcatW (scalar_t__*,scalar_t__*) ;
 int strcmpW (scalar_t__*,int ) ;
 int strcpyW (scalar_t__*,scalar_t__*) ;
 int strlenW (scalar_t__*) ;
 scalar_t__* szSemiColon ;
 int szSourceDir ;

__attribute__((used)) static void append_productcode(MSIPACKAGE* package, LPCWSTR action_property,
                               LPCWSTR productid)
{
    LPWSTR prop;
    LPWSTR newprop;
    DWORD len;
    UINT r;

    prop = msi_dup_property(package->db, action_property );
    if (prop)
        len = strlenW(prop);
    else
        len = 0;


    len ++;

    len += strlenW(productid);


    len++;

    newprop = msi_alloc( len*sizeof(WCHAR) );

    if (prop)
    {
        strcpyW(newprop,prop);
        strcatW(newprop,szSemiColon);
    }
    else
        newprop[0] = 0;
    strcatW(newprop,productid);

    r = msi_set_property( package->db, action_property, newprop, -1 );
    if (r == ERROR_SUCCESS && !strcmpW( action_property, szSourceDir ))
        msi_reset_folders( package, TRUE );

    TRACE("Found Related Product... %s now %s\n",
          debugstr_w(action_property), debugstr_w(newprop));

    msi_free( prop );
    msi_free( newprop );
}
