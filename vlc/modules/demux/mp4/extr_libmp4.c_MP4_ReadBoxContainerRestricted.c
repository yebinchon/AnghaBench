
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int stream_t ;
typedef int MP4_Box_t ;


 int MP4_ReadBoxContainerChildrenIndexed (int *,int *,int const*,int const*,int) ;

int MP4_ReadBoxContainerRestricted( stream_t *p_stream, MP4_Box_t *p_container,
                                    const uint32_t stoplist[], const uint32_t excludelist[] )
{
    return MP4_ReadBoxContainerChildrenIndexed( p_stream, p_container,
                                                stoplist, excludelist, 0 );
}
