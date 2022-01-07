
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mxwriter ;
typedef int WCHAR ;
typedef int HRESULT ;


 int S_OK ;
 int const* quotW ;
 int write_output_buffer (int *,int const*,int) ;

__attribute__((used)) static HRESULT write_output_buffer_quoted(mxwriter *writer, const WCHAR *data, int len)
{
    write_output_buffer(writer, quotW, 1);
    write_output_buffer(writer, data, len);
    write_output_buffer(writer, quotW, 1);

    return S_OK;
}
