
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int input_thread_t ;
typedef int input_thread_events_cb ;
typedef int input_item_t ;


 int * Create (int *,int ,void*,int *,int ,int *,int *) ;
 int INPUT_CREATE_OPTION_PREPARSING ;

input_thread_t *input_CreatePreparser( vlc_object_t *parent,
                                       input_thread_events_cb events_cb,
                                       void *events_data, input_item_t *item )
{
    return Create( parent, events_cb, events_data, item,
                   INPUT_CREATE_OPTION_PREPARSING, ((void*)0), ((void*)0) );
}
