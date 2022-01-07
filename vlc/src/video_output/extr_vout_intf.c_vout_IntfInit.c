
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vout_thread_t ;


 int AboveCallback ;
 int AspectCallback ;
 int AutoScaleCallback ;
 int CropBorderCallback ;
 int CropCallback ;
 int FullscreenCallback ;
 int SnapshotCallback ;
 int SubFilterCallback ;
 int SubMarginCallback ;
 int SubSourceCallback ;
 int VideoFilterCallback ;
 int ViewpointCallback ;
 int WallPaperCallback ;
 int ZoomCallback ;
 int var_AddCallback (int *,char*,int ,int *) ;

void vout_IntfInit( vout_thread_t *p_vout )
{
    var_AddCallback( p_vout, "autoscale", AutoScaleCallback, ((void*)0) );
    var_AddCallback( p_vout, "zoom", ZoomCallback, ((void*)0) );
    var_AddCallback( p_vout, "crop-left", CropBorderCallback, ((void*)0) );
    var_AddCallback( p_vout, "crop-top", CropBorderCallback, ((void*)0) );
    var_AddCallback( p_vout, "crop-right", CropBorderCallback, ((void*)0) );
    var_AddCallback( p_vout, "crop-bottom", CropBorderCallback, ((void*)0) );
    var_AddCallback( p_vout, "crop", CropCallback, ((void*)0) );
    var_AddCallback( p_vout, "aspect-ratio", AspectCallback, ((void*)0) );
    var_AddCallback( p_vout, "video-on-top", AboveCallback, ((void*)0) );
    var_AddCallback( p_vout, "video-wallpaper", WallPaperCallback, ((void*)0) );
    var_AddCallback( p_vout, "fullscreen", FullscreenCallback, ((void*)0) );
    var_AddCallback( p_vout, "video-snapshot", SnapshotCallback, ((void*)0) );
    var_AddCallback( p_vout, "video-filter", VideoFilterCallback, ((void*)0) );
    var_AddCallback( p_vout, "sub-source", SubSourceCallback, ((void*)0) );
    var_AddCallback( p_vout, "sub-filter", SubFilterCallback, ((void*)0) );
    var_AddCallback( p_vout, "sub-margin", SubMarginCallback, ((void*)0) );
    var_AddCallback( p_vout, "viewpoint", ViewpointCallback, ((void*)0) );
}
