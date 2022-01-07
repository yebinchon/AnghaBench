
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
typedef int vlc_clock_t ;
struct input_decoder_callbacks {int dummy; } ;
typedef int sout_instance_t ;
typedef int input_resource_t ;
typedef int es_format_t ;
typedef int decoder_t ;


 int * decoder_New (int *,int *,int *,int *,int *,int,struct input_decoder_callbacks const*,void*) ;

decoder_t *input_DecoderNew( vlc_object_t *parent, es_format_t *fmt,
                             vlc_clock_t *p_clock, input_resource_t *resource,
                             sout_instance_t *p_sout, bool thumbnailing,
                             const struct input_decoder_callbacks *cbs,
                             void *cbs_userdata)
{
    return decoder_New( parent, fmt, p_clock, resource, p_sout, thumbnailing,
                        cbs, cbs_userdata );
}
