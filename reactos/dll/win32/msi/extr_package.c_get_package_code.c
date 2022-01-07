
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_9__ {int storage; } ;
struct TYPE_8__ {int hdr; } ;
typedef TYPE_1__ MSISUMMARYINFO ;
typedef TYPE_2__ MSIDATABASE ;


 scalar_t__ ERROR_SUCCESS ;
 int PID_REVNUMBER ;
 int WARN (char*,scalar_t__) ;
 scalar_t__ msi_get_db_suminfo (TYPE_2__*,int ,TYPE_1__**) ;
 scalar_t__ msi_get_suminfo (int ,int ,TYPE_1__**) ;
 int * msi_suminfo_dup_string (TYPE_1__*,int ) ;
 int msiobj_release (int *) ;

__attribute__((used)) static WCHAR *get_package_code( MSIDATABASE *db )
{
    WCHAR *ret;
    MSISUMMARYINFO *si;
    UINT r;

    r = msi_get_suminfo( db->storage, 0, &si );
    if (r != ERROR_SUCCESS)
    {
        r = msi_get_db_suminfo( db, 0, &si );
        if (r != ERROR_SUCCESS)
        {
            WARN("failed to load summary info %u\n", r);
            return ((void*)0);
        }
    }
    ret = msi_suminfo_dup_string( si, PID_REVNUMBER );
    msiobj_release( &si->hdr );
    return ret;
}
