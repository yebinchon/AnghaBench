
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_3__ {int db; } ;
typedef int MSISUMMARYINFO ;
typedef TYPE_1__ MSIPACKAGE ;
typedef int **** LPWSTR ;


 int ERR (char*) ;
 size_t ERROR_FUNCTION_FAILED ;
 size_t ERROR_SUCCESS ;
 int PID_TEMPLATE ;
 int ****** msi_dup_property (int ,int ) ;
 int msi_free (int ****) ;
 int ******* msi_split_string (int ****,char) ;
 int ****** msi_suminfo_dup_string (int *,int ) ;
 int strcmpW (int ****,int ****) ;
 int szProductCode ;

UINT msi_check_patch_applicable( MSIPACKAGE *package, MSISUMMARYINFO *si )
{
    LPWSTR guid_list, *guids, product_code;
    UINT i, ret = ERROR_FUNCTION_FAILED;

    product_code = msi_dup_property( package->db, szProductCode );
    if (!product_code)
    {

        ERR("no product code to check\n");
        return ERROR_SUCCESS;
    }
    guid_list = msi_suminfo_dup_string( si, PID_TEMPLATE );
    guids = msi_split_string( guid_list, ';' );
    for (i = 0; guids[i] && ret != ERROR_SUCCESS; i++)
    {
        if (!strcmpW( guids[i], product_code )) ret = ERROR_SUCCESS;
    }
    msi_free( guids );
    msi_free( guid_list );
    msi_free( product_code );
    return ret;
}
