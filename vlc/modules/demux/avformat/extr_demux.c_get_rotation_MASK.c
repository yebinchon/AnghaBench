#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  video_transform_t ;
typedef  scalar_t__ int64_t ;
typedef  scalar_t__ int32_t ;
struct TYPE_12__ {void* orientation; } ;
struct TYPE_9__ {TYPE_4__ video; } ;
typedef  TYPE_1__ es_format_t ;
struct TYPE_11__ {int /*<<< orphan*/  value; } ;
struct TYPE_10__ {int /*<<< orphan*/  metadata; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AV_PKT_DATA_DISPLAYMATRIX ; 
 void* ORIENT_HFLIPPED ; 
 void* ORIENT_NORMAL ; 
 void* ORIENT_ROTATED_180 ; 
 void* ORIENT_ROTATED_270 ; 
 void* ORIENT_ROTATED_90 ; 
 void* ORIENT_VFLIPPED ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC4 (int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(es_format_t *fmt, AVStream *s)
{
    char const *kRotateKey = "rotate";
    AVDictionaryEntry *rotation = FUNC0(s->metadata, kRotateKey, NULL, 0);
    long angle = 0;

    int32_t *matrix = (int32_t *)FUNC3(s, AV_PKT_DATA_DISPLAYMATRIX, NULL);
    if( matrix ) {
        int64_t det = (int64_t)matrix[0] * matrix[4] - (int64_t)matrix[1] * matrix[3];
        if (det < 0) {
            /* Flip the matrix to decouple flip and rotation operations.
             * Always assume an horizontal flip for simplicity,
             * it can be changed later if rotation is 180º. */
            FUNC1(matrix, 1, 0);
        }
        angle = FUNC4(FUNC2(matrix));

        if (angle > 45 && angle < 135)
            fmt->video.orientation = ORIENT_ROTATED_270;

        else if (angle > 135 || angle < -135) {
            if (det < 0)
                fmt->video.orientation = ORIENT_VFLIPPED;
            else
                fmt->video.orientation = ORIENT_ROTATED_180;
        }
        else if (angle < -45 && angle > -135)
            fmt->video.orientation = ORIENT_ROTATED_90;

        else
            fmt->video.orientation = ORIENT_NORMAL;

        /* Flip is already applied to the 180º case. */
        if (det < 0 && !(angle > 135 || angle < -135)) {
            video_transform_t transform = (video_transform_t)fmt->video.orientation;
            /* Flip first then rotate */
            fmt->video.orientation = ORIENT_HFLIPPED;
            FUNC6(&fmt->video, transform);
        }

    } else if( rotation ) {
        angle = FUNC5(rotation->value, NULL, 10);

        if (angle > 45 && angle < 135)
            fmt->video.orientation = ORIENT_ROTATED_90;

        else if (angle > 135 && angle < 225)
            fmt->video.orientation = ORIENT_ROTATED_180;

        else if (angle > 225 && angle < 315)
            fmt->video.orientation = ORIENT_ROTATED_270;

        else
            fmt->video.orientation = ORIENT_NORMAL;
    }
}