
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stream_t ;
typedef int MP4_Box_t ;


 int MP4_BoxDumpStructure_Internal (int *,int const*,int ) ;

void MP4_BoxDumpStructure( stream_t *s, const MP4_Box_t *p_box )
{
    MP4_BoxDumpStructure_Internal( s, p_box, 0 );
}
