
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_2__ {int p_sys; } ;
typedef TYPE_1__ stream_extractor_t ;


 void CommonClose (int ) ;

__attribute__((used)) static void ExtractorClose( vlc_object_t* p_obj )
{
    stream_extractor_t* p_extractor = (void*)p_obj;
    return CommonClose( p_extractor->p_sys );
}
