
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlwriteroutput ;
typedef char WCHAR ;
typedef int HRESULT ;


 int ARRAY_SIZE (char const*) ;
 int S_OK ;
 int write_output_buffer (int *,char const*,int) ;

__attribute__((used)) static HRESULT write_output_qname(xmlwriteroutput *output, const WCHAR *prefix, const WCHAR *local_name)
{
    if (prefix) {
        static const WCHAR colW[] = {':'};
        write_output_buffer(output, prefix, -1);
        write_output_buffer(output, colW, ARRAY_SIZE(colW));
    }

    write_output_buffer(output, local_name, -1);

    return S_OK;
}
