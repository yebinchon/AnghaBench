
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int AboveCallback ;
 int AspectCallback ;
 int AutoScaleCallback ;
 int CropBorderCallback ;
 int CropCallback ;
 int FullscreenCallback ;
 int SecondarySubMarginCallback ;
 int SnapshotCallback ;
 int SubFilterCallback ;
 int SubMarginCallback ;
 int SubSourceCallback ;
 int VideoFilterCallback ;
 int ViewpointCallback ;
 int WallPaperCallback ;
 int ZoomCallback ;
 int var_DelCallback (int *,char*,int ,int *) ;

void vout_IntfDeinit(vlc_object_t *obj)
{
    var_DelCallback(obj, "viewpoint", ViewpointCallback, ((void*)0));
    var_DelCallback(obj, "sub-margin", SubMarginCallback, ((void*)0));
    var_DelCallback(obj, "secondary-sub-margin", SecondarySubMarginCallback, ((void*)0));
    var_DelCallback(obj, "sub-filter", SubFilterCallback, ((void*)0));
    var_DelCallback(obj, "sub-source", SubSourceCallback, ((void*)0));
    var_DelCallback(obj, "video-filter", VideoFilterCallback, ((void*)0));
    var_DelCallback(obj, "video-snapshot", SnapshotCallback, ((void*)0));
    var_DelCallback(obj, "fullscreen", FullscreenCallback, ((void*)0));
    var_DelCallback(obj, "video-wallpaper", WallPaperCallback, ((void*)0));
    var_DelCallback(obj, "video-on-top", AboveCallback, ((void*)0));
    var_DelCallback(obj, "aspect-ratio", AspectCallback, ((void*)0));
    var_DelCallback(obj, "crop", CropCallback, ((void*)0));
    var_DelCallback(obj, "crop-bottom", CropBorderCallback, ((void*)0));
    var_DelCallback(obj, "crop-right", CropBorderCallback, ((void*)0));
    var_DelCallback(obj, "crop-top", CropBorderCallback, ((void*)0));
    var_DelCallback(obj, "crop-left", CropBorderCallback, ((void*)0));
    var_DelCallback(obj, "zoom", ZoomCallback, ((void*)0));
    var_DelCallback(obj, "autoscale", AutoScaleCallback, ((void*)0));
}
