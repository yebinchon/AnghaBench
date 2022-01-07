
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int copy_cache_t ;
struct TYPE_3__ {int * data; } ;
typedef TYPE_1__ ArchitectureSpecificCopyData ;


 int CopyCleanCache (int *) ;
 int OMX_COLOR_FormatYUV420SemiPlanar ;
 int free (int *) ;
 scalar_t__ vlc_CPU_SSE2 () ;

void ArchitectureSpecificCopyHooksDestroy( int i_color_format,
                                           ArchitectureSpecificCopyData *p_architecture_specific )
{
    if (!p_architecture_specific->data)
        return;







    free(p_architecture_specific->data);
    p_architecture_specific->data = ((void*)0);
}
