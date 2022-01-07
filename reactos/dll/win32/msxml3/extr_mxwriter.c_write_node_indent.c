
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int indent; void* text; void* newline; int * props; } ;
typedef TYPE_1__ mxwriter ;
typedef char WCHAR ;


 int ARRAY_SIZE (char const*) ;
 void* FALSE ;
 size_t MXWriter_Indent ;
 char const* crlfW ;
 int write_output_buffer (TYPE_1__*,char const*,int) ;

__attribute__((used)) static void write_node_indent(mxwriter *writer)
{
    static const WCHAR tabW[] = {'\t'};
    int indent = writer->indent;

    if (!writer->props[MXWriter_Indent] || writer->text)
    {
        writer->text = FALSE;
        return;
    }



    if (!writer->newline)
        write_output_buffer(writer, crlfW, ARRAY_SIZE(crlfW));
    while (indent--)
        write_output_buffer(writer, tabW, 1);

    writer->newline = FALSE;
    writer->text = FALSE;
}
