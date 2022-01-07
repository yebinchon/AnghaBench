
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef scalar_t__ UINT ;
typedef int IStorage ;
typedef int HRESULT ;


 scalar_t__ ERROR_SUCCESS ;
 int E_FAIL ;
 int S_OK ;
 int TRUE ;
 int szStringData ;
 int szStringPool ;
 scalar_t__ write_stream_data (int *,int ,int *,int,int ) ;

HRESULT msi_init_string_table( IStorage *stg )
{
    USHORT zero[2] = { 0, 0 };
    UINT ret;


    ret = write_stream_data(stg, szStringPool, zero, sizeof zero, TRUE);
    if (ret != ERROR_SUCCESS)
        return E_FAIL;


    ret = write_stream_data(stg, szStringData, ((void*)0), 0, TRUE);
    if (ret != ERROR_SUCCESS)
        return E_FAIL;

    return S_OK;
}
