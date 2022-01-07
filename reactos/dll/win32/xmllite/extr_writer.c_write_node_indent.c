
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int indent_level; scalar_t__ state; TYPE_3__* output; int indent; } ;
typedef TYPE_2__ xmlwriter ;
typedef char WCHAR ;
struct TYPE_5__ {scalar_t__ written; } ;
struct TYPE_7__ {TYPE_1__ buffer; } ;


 int ARRAY_SIZE (char const*) ;
 scalar_t__ XmlWriterState_Ready ;
 int write_output_buffer (TYPE_3__*,char const*,int ) ;

__attribute__((used)) static void write_node_indent(xmlwriter *writer)
{
    static const WCHAR dblspaceW[] = {' ',' '};
    static const WCHAR crlfW[] = {'\r','\n'};
    unsigned int indent_level = writer->indent_level;

    if (!writer->indent)
        return;



    if (writer->output->buffer.written && writer->state != XmlWriterState_Ready)
        write_output_buffer(writer->output, crlfW, ARRAY_SIZE(crlfW));
    while (indent_level--)
        write_output_buffer(writer->output, dblspaceW, ARRAY_SIZE(dblspaceW));
}
