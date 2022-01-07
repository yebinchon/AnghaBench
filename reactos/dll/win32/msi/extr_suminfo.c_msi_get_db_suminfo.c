
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_9__ {int storage; } ;
struct TYPE_8__ {int hdr; } ;
typedef TYPE_1__ MSISUMMARYINFO ;
typedef TYPE_2__ MSIDATABASE ;
typedef int IStream ;


 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 int IStream_Release (int *) ;
 TYPE_1__* create_suminfo (int ,scalar_t__) ;
 scalar_t__ load_summary_info (TYPE_1__*,int *) ;
 scalar_t__ msi_get_stream (TYPE_2__*,int ,int **) ;
 int msiobj_release (int *) ;
 int szSumInfo ;

UINT msi_get_db_suminfo( MSIDATABASE *db, UINT uiUpdateCount, MSISUMMARYINFO **ret )
{
    IStream *stm;
    MSISUMMARYINFO *si;
    UINT r;

    if (!(si = create_suminfo( db->storage, uiUpdateCount ))) return ERROR_OUTOFMEMORY;

    r = msi_get_stream( db, szSumInfo, &stm );
    if (r != ERROR_SUCCESS)
    {
        msiobj_release( &si->hdr );
        return r;
    }

    r = load_summary_info( si, stm );
    IStream_Release( stm );
    if (r != ERROR_SUCCESS)
    {
        msiobj_release( &si->hdr );
        return r;
    }

    *ret = si;
    return ERROR_SUCCESS;
}
