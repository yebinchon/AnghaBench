
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ptd; } ;
struct TYPE_5__ {int * pAdvSink; TYPE_1__ formatetc; } ;
typedef TYPE_2__ STATDATA ;


 int CoTaskMemFree (int *) ;
 int IAdviseSink_Release (int *) ;

__attribute__((used)) static void release_statdata(STATDATA *data)
{
    CoTaskMemFree(data->formatetc.ptd);
    data->formatetc.ptd = ((void*)0);

    if(data->pAdvSink)
    {
        IAdviseSink_Release(data->pAdvSink);
        data->pAdvSink = ((void*)0);
    }
}
