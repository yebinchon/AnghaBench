#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jobject ;
typedef  enum AWindow_ID { ____Placeholder_AWindow_ID } AWindow_ID ;
struct TYPE_10__ {TYPE_1__* views; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_2__**,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* NewGlobalRef ) (TYPE_2__**,int /*<<< orphan*/ ) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  jsurface; } ;
typedef  TYPE_2__* JNIEnv ;
typedef  TYPE_3__ AWindowHandler ;

/* Variables and functions */
#define  AWindow_Subtitles 130 
#define  AWindow_SurfaceTexture 129 
#define  AWindow_Video 128 
 int /*<<< orphan*/  CallObjectMethod ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  getSubtitlesSurface ; 
 int /*<<< orphan*/  getSurface ; 
 int /*<<< orphan*/  getVideoSurface ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(AWindowHandler *p_awh, JNIEnv *p_env,
                            enum AWindow_ID id)
{
    jobject jsurface;

    switch (id)
    {
        case AWindow_Video:
            jsurface = FUNC0(CallObjectMethod, getVideoSurface);
            break;
        case AWindow_Subtitles:
            jsurface = FUNC0(CallObjectMethod, getSubtitlesSurface);
            break;
        case AWindow_SurfaceTexture:
            jsurface = FUNC1(CallObjectMethod, getSurface);
            break;
    }
    if (!jsurface)
        return VLC_EGENERIC;

    p_awh->views[id].jsurface = (*p_env)->NewGlobalRef(p_env, jsurface);
    (*p_env)->DeleteLocalRef(p_env, jsurface);
    return VLC_SUCCESS;
}