
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int dsdt_indent_level ;

void
dsdt_unindent(int levels)
{

 assert(dsdt_indent_level >= levels);
 dsdt_indent_level -= levels;
}
