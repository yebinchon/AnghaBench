#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {float yaw; float pitch; float roll; float fov; } ;
struct TYPE_8__ {TYPE_1__ pose; int /*<<< orphan*/  projection_mode; } ;
typedef  TYPE_2__ video_format_t ;
typedef  TYPE_3__* jpeg_saved_marker_ptr ;
typedef  TYPE_4__* j_decompress_ptr ;
struct TYPE_10__ {TYPE_3__* marker_list; } ;
struct TYPE_9__ {scalar_t__ marker; int data_length; scalar_t__ data; struct TYPE_9__* next; } ;

/* Variables and functions */
 scalar_t__ EXIF_JPEG_MARKER ; 
 int /*<<< orphan*/  EXIF_XMP_STRING ; 
 int /*<<< orphan*/  PROJECTION_MODE_EQUIRECTANGULAR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,float*,char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(j_decompress_ptr cinfo, video_format_t *fmt)
{
    jpeg_saved_marker_ptr xmp_marker = NULL;
    jpeg_saved_marker_ptr cmarker = cinfo->marker_list;

    while (cmarker)
    {
        if (cmarker->marker == EXIF_JPEG_MARKER)
        {
            if(cmarker->data_length >= 32 &&
               !FUNC3(cmarker->data, EXIF_XMP_STRING, 29))
            {
                xmp_marker = cmarker;
                break;
            }
        }
        cmarker = cmarker->next;
    }

    if (xmp_marker == NULL)
        return;
    char *psz_rdf = FUNC2(xmp_marker->data_length - 29 + 1);
    if (FUNC6(psz_rdf == NULL))
        return;
    FUNC4(psz_rdf, xmp_marker->data + 29, xmp_marker->data_length - 29);
    psz_rdf[xmp_marker->data_length - 29] = '\0';

    /* Try to find the string "GSpherical:Spherical" because the v1
        spherical video spec says the tag must be there. */
    if (FUNC5(psz_rdf, "ProjectionType=\"equirectangular\"") ||
        FUNC5(psz_rdf, "ProjectionType>equirectangular"))
        fmt->projection_mode = PROJECTION_MODE_EQUIRECTANGULAR;

    /* pose handling */
    float value;
    if (FUNC1(psz_rdf, &value, "PoseHeadingDegrees"))
        fmt->pose.yaw = value;

    if (FUNC1(psz_rdf, &value, "PosePitchDegrees"))
        fmt->pose.pitch = value;

    if (FUNC1(psz_rdf, &value, "PoseRollDegrees"))
        fmt->pose.roll = value;

    /* initial view */
    if (FUNC1(psz_rdf, &value, "InitialViewHeadingDegrees"))
        fmt->pose.yaw = value;

    if (FUNC1(psz_rdf, &value, "InitialViewPitchDegrees"))
        fmt->pose.pitch = value;

    if (FUNC1(psz_rdf, &value, "InitialViewRollDegrees"))
        fmt->pose.roll = value;

    if (FUNC1(psz_rdf, &value, "InitialHorizontalFOVDegrees"))
        fmt->pose.fov = value;

    FUNC0(psz_rdf);
}