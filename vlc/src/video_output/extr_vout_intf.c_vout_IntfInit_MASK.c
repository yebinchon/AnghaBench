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
typedef  int /*<<< orphan*/  vout_thread_t ;

/* Variables and functions */
 int /*<<< orphan*/  AboveCallback ; 
 int /*<<< orphan*/  AspectCallback ; 
 int /*<<< orphan*/  AutoScaleCallback ; 
 int /*<<< orphan*/  CropBorderCallback ; 
 int /*<<< orphan*/  CropCallback ; 
 int /*<<< orphan*/  FullscreenCallback ; 
 int /*<<< orphan*/  SnapshotCallback ; 
 int /*<<< orphan*/  SubFilterCallback ; 
 int /*<<< orphan*/  SubMarginCallback ; 
 int /*<<< orphan*/  SubSourceCallback ; 
 int /*<<< orphan*/  VideoFilterCallback ; 
 int /*<<< orphan*/  ViewpointCallback ; 
 int /*<<< orphan*/  WallPaperCallback ; 
 int /*<<< orphan*/  ZoomCallback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1( vout_thread_t *p_vout )
{
    FUNC0( p_vout, "autoscale", AutoScaleCallback, NULL );
    FUNC0( p_vout, "zoom", ZoomCallback, NULL );
    FUNC0( p_vout, "crop-left", CropBorderCallback, NULL );
    FUNC0( p_vout, "crop-top", CropBorderCallback, NULL );
    FUNC0( p_vout, "crop-right", CropBorderCallback, NULL );
    FUNC0( p_vout, "crop-bottom", CropBorderCallback, NULL );
    FUNC0( p_vout, "crop", CropCallback, NULL );
    FUNC0( p_vout, "aspect-ratio", AspectCallback, NULL );
    FUNC0( p_vout, "video-on-top", AboveCallback, NULL );
    FUNC0( p_vout, "video-wallpaper", WallPaperCallback, NULL );
    FUNC0( p_vout, "fullscreen", FullscreenCallback, NULL );
    FUNC0( p_vout, "video-snapshot", SnapshotCallback, NULL );
    FUNC0( p_vout, "video-filter", VideoFilterCallback, NULL );
    FUNC0( p_vout, "sub-source", SubSourceCallback, NULL );
    FUNC0( p_vout, "sub-filter", SubFilterCallback, NULL );
    FUNC0( p_vout, "sub-margin", SubMarginCallback, NULL );
    FUNC0( p_vout, "viewpoint", ViewpointCallback, NULL );
}