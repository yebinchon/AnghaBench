
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {int hdr; int storage; } ;
typedef TYPE_1__ MSISUMMARYINFO ;
typedef int IStream ;
typedef int IStorage ;
typedef int HRESULT ;


 scalar_t__ ERROR_FUNCTION_FAILED ;
 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FAILED (int ) ;
 int IStorage_OpenStream (int ,int ,int ,int,int ,int **) ;
 int IStream_Release (int *) ;
 int STGM_READ ;
 int STGM_SHARE_EXCLUSIVE ;
 int TRACE (char*,int *,scalar_t__) ;
 TYPE_1__* create_suminfo (int *,scalar_t__) ;
 scalar_t__ load_summary_info (TYPE_1__*,int *) ;
 int msiobj_release (int *) ;
 int szSumInfo ;

UINT msi_get_suminfo( IStorage *stg, UINT uiUpdateCount, MSISUMMARYINFO **ret )
{
    IStream *stm;
    MSISUMMARYINFO *si;
    HRESULT hr;
    UINT r;

    TRACE("%p, %u\n", stg, uiUpdateCount);

    if (!(si = create_suminfo( stg, uiUpdateCount ))) return ERROR_OUTOFMEMORY;

    hr = IStorage_OpenStream( si->storage, szSumInfo, 0, STGM_READ|STGM_SHARE_EXCLUSIVE, 0, &stm );
    if (FAILED( hr ))
    {
        msiobj_release( &si->hdr );
        return ERROR_FUNCTION_FAILED;
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
