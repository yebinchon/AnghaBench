
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int p_extra; scalar_t__ i_extra; } ;
typedef TYPE_1__ mux_extradata_builder_t ;
typedef enum av1_obu_type_e { ____Placeholder_av1_obu_type_e } av1_obu_type_e ;
typedef int av1_OBU_sequence_header_t ;
typedef int AV1_OBU_iterator_ctx_t ;


 int AV1_OBUGetType (int const*) ;
 int AV1_OBU_SEQUENCE_HEADER ;
 scalar_t__ AV1_OBU_iterate_next (int *,int const**,size_t*) ;
 int AV1_OBU_iterator_init (int *,int const*,size_t) ;
 int * AV1_OBU_parse_sequence_header (int const*,size_t) ;
 scalar_t__ AV1_create_DecoderConfigurationRecord (int *,int *,int,int const**,size_t*) ;
 int AV1_release_sequence_header (int *) ;

__attribute__((used)) static void av1_extradata_builder_Feed(mux_extradata_builder_t *m,
                                       const uint8_t *p_data, size_t i_data)
{
    if(m->i_extra)
        return;

    AV1_OBU_iterator_ctx_t ctx;
    AV1_OBU_iterator_init(&ctx, p_data, i_data);
    const uint8_t *p_obu; size_t i_obu;
    while(AV1_OBU_iterate_next(&ctx, &p_obu, &i_obu))
    {
        enum av1_obu_type_e OBUtype = AV1_OBUGetType(p_obu);
        if(OBUtype != AV1_OBU_SEQUENCE_HEADER)
            continue;
        av1_OBU_sequence_header_t *p_sh = AV1_OBU_parse_sequence_header(p_obu, i_obu);
        if(p_sh)
        {
            m->i_extra = AV1_create_DecoderConfigurationRecord(&m->p_extra, p_sh,
                                                               1, (const uint8_t **)&p_obu, &i_obu);
            AV1_release_sequence_header(p_sh);
        }
        break;
    }
}
