
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int cdata; } ;
typedef TYPE_1__ mxwriter ;
typedef int HRESULT ;


 int FALSE ;
 int close_element_starttag (TYPE_1__*) ;
 int set_element_name (TYPE_1__*,int *,int ) ;
 int write_data_to_stream (TYPE_1__*) ;

__attribute__((used)) static inline HRESULT flush_output_buffer(mxwriter *This)
{
    close_element_starttag(This);
    set_element_name(This, ((void*)0), 0);
    This->cdata = FALSE;
    return write_data_to_stream(This);
}
