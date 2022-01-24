#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;

/* Variables and functions */
 int /*<<< orphan*/  AboveCallback ; 
 int /*<<< orphan*/  AspectCallback ; 
 int /*<<< orphan*/  AutoScaleCallback ; 
 int /*<<< orphan*/  CropBorderCallback ; 
 int /*<<< orphan*/  CropCallback ; 
 int /*<<< orphan*/  FullscreenCallback ; 
 int /*<<< orphan*/  SecondarySubMarginCallback ; 
 int /*<<< orphan*/  SnapshotCallback ; 
 int /*<<< orphan*/  SubFilterCallback ; 
 int /*<<< orphan*/  SubMarginCallback ; 
 int /*<<< orphan*/  SubSourceCallback ; 
 int /*<<< orphan*/  VideoFilterCallback ; 
 int /*<<< orphan*/  ViewpointCallback ; 
 int /*<<< orphan*/  WallPaperCallback ; 
 int /*<<< orphan*/  ZoomCallback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1(vlc_object_t *obj)
{
    FUNC0(obj, "viewpoint", ViewpointCallback, NULL);
    FUNC0(obj, "sub-margin", SubMarginCallback, NULL);
    FUNC0(obj, "secondary-sub-margin", SecondarySubMarginCallback, NULL);
    FUNC0(obj, "sub-filter", SubFilterCallback, NULL);
    FUNC0(obj, "sub-source", SubSourceCallback, NULL);
    FUNC0(obj, "video-filter", VideoFilterCallback, NULL);
    FUNC0(obj, "video-snapshot", SnapshotCallback, NULL);
    FUNC0(obj, "fullscreen", FullscreenCallback, NULL);
    FUNC0(obj, "video-wallpaper", WallPaperCallback, NULL);
    FUNC0(obj, "video-on-top", AboveCallback, NULL);
    FUNC0(obj, "aspect-ratio", AspectCallback, NULL);
    FUNC0(obj, "crop", CropCallback, NULL);
    FUNC0(obj, "crop-bottom", CropBorderCallback, NULL);
    FUNC0(obj, "crop-right", CropBorderCallback, NULL);
    FUNC0(obj, "crop-top", CropBorderCallback, NULL);
    FUNC0(obj, "crop-left", CropBorderCallback, NULL);
    FUNC0(obj, "zoom", ZoomCallback, NULL);
    FUNC0(obj, "autoscale", AutoScaleCallback, NULL);
}