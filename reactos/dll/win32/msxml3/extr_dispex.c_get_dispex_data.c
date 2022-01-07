
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dispex_data_t ;
struct TYPE_6__ {TYPE_1__* data; } ;
struct TYPE_5__ {int * data; } ;
typedef TYPE_2__ DispatchEx ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int cs_dispex_static_data ;
 int * preprocess_dispex_data (TYPE_2__*) ;

__attribute__((used)) static dispex_data_t *get_dispex_data(DispatchEx *This)
{
    if(This->data->data)
        return This->data->data;

    EnterCriticalSection(&cs_dispex_static_data);

    if(!This->data->data)
        This->data->data = preprocess_dispex_data(This);

    LeaveCriticalSection(&cs_dispex_static_data);

    return This->data->data;
}
