
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int element; } ;
typedef TYPE_1__ mxwriter ;
typedef char WCHAR ;


 int write_output_buffer (TYPE_1__*,char const*,int) ;

__attribute__((used)) static void close_element_starttag(mxwriter *writer)
{
    static const WCHAR gtW[] = {'>'};
    if (!writer->element) return;
    write_output_buffer(writer, gtW, 1);
}
