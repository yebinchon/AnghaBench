
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int encoding; int const* encoding_name; } ;
typedef TYPE_1__ xmlwriteroutput ;
typedef int WCHAR ;


 int const* get_encoding_name (int ) ;

__attribute__((used)) static const WCHAR *get_output_encoding_name(xmlwriteroutput *output)
{
    if (output->encoding_name)
        return output->encoding_name;

    return get_encoding_name(output->encoding);
}
