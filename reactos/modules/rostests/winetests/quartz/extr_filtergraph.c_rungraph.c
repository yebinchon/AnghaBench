
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IFilterGraph2 ;


 int test_basic_video (int *) ;
 int test_media_event (int *) ;
 int test_media_seeking (int *) ;
 int test_state_change (int *) ;

__attribute__((used)) static void rungraph(IFilterGraph2 *graph)
{
    test_basic_video(graph);
    test_media_seeking(graph);
    test_state_change(graph);
    test_media_event(graph);
}
