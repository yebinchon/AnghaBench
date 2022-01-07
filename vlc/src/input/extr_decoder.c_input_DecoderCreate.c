
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int input_resource_t ;
typedef int es_format_t ;
typedef int decoder_t ;


 int * decoder_New (int *,int const*,int *,int *,int *,int,int *,int *) ;

decoder_t *input_DecoderCreate( vlc_object_t *p_parent, const es_format_t *fmt,
                                input_resource_t *p_resource )
{
    return decoder_New( p_parent, fmt, ((void*)0), p_resource, ((void*)0), 0, ((void*)0),
                        ((void*)0) );
}
