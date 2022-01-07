
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ indent_level; } ;
typedef TYPE_1__ xmlwriter ;



__attribute__((used)) static void writer_dec_indent(xmlwriter *writer)
{
    if (writer->indent_level)
        writer->indent_level--;
}
