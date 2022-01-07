
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bo_t ;
typedef int avi_stream_t ;


 int AVI_BOX_ENTER_LIST (char*) ;
 int AVI_BOX_EXIT (int ) ;
 int avi_HeaderAdd_strf (int *,int *) ;
 int avi_HeaderAdd_strh (int *,int *) ;

__attribute__((used)) static int avi_HeaderAdd_strl( bo_t *p_bo, avi_stream_t *p_stream )
{
    AVI_BOX_ENTER_LIST( "strl" );

    avi_HeaderAdd_strh( p_bo, p_stream );
    avi_HeaderAdd_strf( p_bo, p_stream );

    AVI_BOX_EXIT( 0 );
}
