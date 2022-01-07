
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bo_t ;


 int AVI_BOX_ENTER (char const*) ;
 int AVI_BOX_EXIT (int ) ;
 int bo_add_8 (int *,int ) ;

__attribute__((used)) static int avi_HeaderAdd_meta( bo_t *p_bo, const char psz_meta[4],
                               const char *psz_data )
{
    if ( psz_data == ((void*)0) ) return 1;
    const char *psz = psz_data;
    AVI_BOX_ENTER( psz_meta );
    while (*psz) bo_add_8( p_bo, *psz++ );
    bo_add_8( p_bo, 0 );
    AVI_BOX_EXIT( 0 );
}
