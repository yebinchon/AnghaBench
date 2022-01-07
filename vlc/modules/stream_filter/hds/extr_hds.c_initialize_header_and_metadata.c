
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flv_header; int flv_header_len; } ;
typedef TYPE_1__ stream_sys_t ;
struct TYPE_6__ {int metadata_len; int metadata; } ;
typedef TYPE_2__ hds_stream_t ;


 int write_flv_header_and_metadata (int *,int ,int ) ;

__attribute__((used)) static void initialize_header_and_metadata( stream_sys_t* p_sys, hds_stream_t *stream )
{
    p_sys->flv_header_len =
        write_flv_header_and_metadata( &p_sys->flv_header, stream->metadata,
                                       stream->metadata_len );
}
