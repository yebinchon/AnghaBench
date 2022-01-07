
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IStorage ;
typedef int HRESULT ;
typedef int GUID ;


 scalar_t__ FAILED (int ) ;
 int IStorage_Commit (int *,int ) ;
 int IStorage_SetClass (int *,int const*) ;
 int S_OK ;
 int TRUE ;
 int WARN (char*,int ) ;
 int msi_init_string_table (int *) ;
 int write_stream_data (int *,char const*,int *,int ,int ) ;

__attribute__((used)) static HRESULT db_initialize( IStorage *stg, const GUID *clsid )
{
    static const WCHAR szTables[] = { '_','T','a','b','l','e','s',0 };
    HRESULT hr;

    hr = IStorage_SetClass( stg, clsid );
    if (FAILED( hr ))
    {
        WARN("failed to set class id 0x%08x\n", hr);
        return hr;
    }


    hr = write_stream_data( stg, szTables, ((void*)0), 0, TRUE );
    if (FAILED( hr ))
    {
        WARN("failed to create _Tables stream 0x%08x\n", hr);
        return hr;
    }

    hr = msi_init_string_table( stg );
    if (FAILED( hr ))
    {
        WARN("failed to initialize string table 0x%08x\n", hr);
        return hr;
    }

    hr = IStorage_Commit( stg, 0 );
    if (FAILED( hr ))
    {
        WARN("failed to commit changes 0x%08x\n", hr);
        return hr;
    }

    return S_OK;
}
