
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ starttagopen; int output; } ;
typedef TYPE_1__ xmlwriter ;
typedef int HRESULT ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ FALSE ;
 int S_OK ;
 int gtW ;
 int write_output_buffer (int ,int ,int ) ;

__attribute__((used)) static HRESULT writer_close_starttag(xmlwriter *writer)
{
    HRESULT hr;

    if (!writer->starttagopen) return S_OK;
    hr = write_output_buffer(writer->output, gtW, ARRAY_SIZE(gtW));
    writer->starttagopen = FALSE;
    return hr;
}
