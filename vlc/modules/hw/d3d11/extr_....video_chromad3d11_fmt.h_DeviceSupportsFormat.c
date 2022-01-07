
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int ID3D11Device ;
typedef int DXGI_FORMAT ;


 int ID3D11Device_CheckFormatSupport (int *,int ,int*) ;
 scalar_t__ SUCCEEDED (int ) ;

__attribute__((used)) static inline bool DeviceSupportsFormat(ID3D11Device *d3ddevice,
                                        DXGI_FORMAT format, UINT supportFlags)
{
    UINT i_formatSupport;
    return SUCCEEDED( ID3D11Device_CheckFormatSupport(d3ddevice, format,
                                                      &i_formatSupport) )
            && ( i_formatSupport & supportFlags ) == supportFlags;
}
