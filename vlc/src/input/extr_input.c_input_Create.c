
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_renderer_item_t ;
typedef int vlc_object_t ;
typedef int input_thread_t ;
typedef int input_thread_events_cb ;
typedef int input_resource_t ;
typedef int input_item_t ;


 int * Create (int *,int ,void*,int *,int ,int *,int *) ;
 int INPUT_CREATE_OPTION_NONE ;

input_thread_t *input_Create( vlc_object_t *p_parent,
                              input_thread_events_cb events_cb, void *events_data,
                              input_item_t *p_item,
                              input_resource_t *p_resource,
                              vlc_renderer_item_t *p_renderer )
{
    return Create( p_parent, events_cb, events_data, p_item,
                   INPUT_CREATE_OPTION_NONE, p_resource, p_renderer );
}
