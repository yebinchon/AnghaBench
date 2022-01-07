
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int bs_t ;
typedef int av1_OBU_sequence_header_t ;
struct TYPE_5__ {int header; int obu_header; } ;
typedef TYPE_1__ av1_OBU_frame_header_t ;


 int AV1_release_frame_header (TYPE_1__*) ;
 int av1_parse_uncompressed_header (int *,int *,int const*) ;
 int av1_read_header (int *,int *) ;
 int bs_init (int *,int const*,size_t) ;
 TYPE_1__* calloc (int,int) ;

av1_OBU_frame_header_t *
    AV1_OBU_parse_frame_header(const uint8_t *p_data, size_t i_data,
                               const av1_OBU_sequence_header_t *p_seq)
{
    bs_t bs;
    bs_init(&bs, p_data, i_data);

    av1_OBU_frame_header_t *p_fh = calloc(1, sizeof(*p_fh));
    if(!p_fh)
        return ((void*)0);

    if(!av1_read_header(&bs, &p_fh->obu_header) ||
       !av1_parse_uncompressed_header(&bs, &p_fh->header, p_seq))
    {
        AV1_release_frame_header(p_fh);
        return ((void*)0);
    }

    return p_fh;
}
