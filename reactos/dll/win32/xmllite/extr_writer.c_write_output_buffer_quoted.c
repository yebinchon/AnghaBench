
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlwriteroutput ;
typedef int WCHAR ;
typedef int HRESULT ;


 int ARRAY_SIZE (int const*) ;
 int S_OK ;
 int const* quoteW ;
 int write_output_buffer (int *,int const*,int) ;

__attribute__((used)) static HRESULT write_output_buffer_quoted(xmlwriteroutput *output, const WCHAR *data, int len)
{
    write_output_buffer(output, quoteW, ARRAY_SIZE(quoteW));
    write_output_buffer(output, data, len);
    write_output_buffer(output, quoteW, ARRAY_SIZE(quoteW));
    return S_OK;
}
