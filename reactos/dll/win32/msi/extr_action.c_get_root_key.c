
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int db; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int INT ;
typedef int HKEY ;


 int ERR (char*,int) ;
 int HKEY_CLASSES_ROOT ;
 int HKEY_CURRENT_USER ;
 int HKEY_LOCAL_MACHINE ;
 int HKEY_USERS ;
 int msi_get_property_int (int ,int ,int ) ;
 int szAllUsers ;
 int * szHCR ;
 int * szHCU ;
 int * szHLM ;
 int * szHU ;

__attribute__((used)) static const WCHAR *get_root_key( MSIPACKAGE *package, INT root, HKEY *root_key )
{
    const WCHAR *ret;

    switch (root)
    {
    case -1:
        if (msi_get_property_int( package->db, szAllUsers, 0 ))
        {
            *root_key = HKEY_LOCAL_MACHINE;
            ret = szHLM;
        }
        else
        {
            *root_key = HKEY_CURRENT_USER;
            ret = szHCU;
        }
        break;
    case 0:
        *root_key = HKEY_CLASSES_ROOT;
        ret = szHCR;
        break;
    case 1:
        *root_key = HKEY_CURRENT_USER;
        ret = szHCU;
        break;
    case 2:
        *root_key = HKEY_LOCAL_MACHINE;
        ret = szHLM;
        break;
    case 3:
        *root_key = HKEY_USERS;
        ret = szHU;
        break;
    default:
        ERR("Unknown root %i\n", root);
        return ((void*)0);
    }

    return ret;
}
