
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {float yaw; float pitch; float roll; float fov; } ;
struct TYPE_8__ {TYPE_1__ pose; int projection_mode; } ;
typedef TYPE_2__ video_format_t ;
typedef TYPE_3__* jpeg_saved_marker_ptr ;
typedef TYPE_4__* j_decompress_ptr ;
struct TYPE_10__ {TYPE_3__* marker_list; } ;
struct TYPE_9__ {scalar_t__ marker; int data_length; scalar_t__ data; struct TYPE_9__* next; } ;


 scalar_t__ EXIF_JPEG_MARKER ;
 int EXIF_XMP_STRING ;
 int PROJECTION_MODE_EQUIRECTANGULAR ;
 int free (char*) ;
 scalar_t__ getRDFFloat (char*,float*,char*) ;
 char* malloc (int) ;
 int memcmp (scalar_t__,int ,int) ;
 int memcpy (char*,scalar_t__,int) ;
 scalar_t__ strcasestr (char*,char*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void jpeg_GetProjection(j_decompress_ptr cinfo, video_format_t *fmt)
{
    jpeg_saved_marker_ptr xmp_marker = ((void*)0);
    jpeg_saved_marker_ptr cmarker = cinfo->marker_list;

    while (cmarker)
    {
        if (cmarker->marker == EXIF_JPEG_MARKER)
        {
            if(cmarker->data_length >= 32 &&
               !memcmp(cmarker->data, EXIF_XMP_STRING, 29))
            {
                xmp_marker = cmarker;
                break;
            }
        }
        cmarker = cmarker->next;
    }

    if (xmp_marker == ((void*)0))
        return;
    char *psz_rdf = malloc(xmp_marker->data_length - 29 + 1);
    if (unlikely(psz_rdf == ((void*)0)))
        return;
    memcpy(psz_rdf, xmp_marker->data + 29, xmp_marker->data_length - 29);
    psz_rdf[xmp_marker->data_length - 29] = '\0';



    if (strcasestr(psz_rdf, "ProjectionType=\"equirectangular\"") ||
        strcasestr(psz_rdf, "ProjectionType>equirectangular"))
        fmt->projection_mode = PROJECTION_MODE_EQUIRECTANGULAR;


    float value;
    if (getRDFFloat(psz_rdf, &value, "PoseHeadingDegrees"))
        fmt->pose.yaw = value;

    if (getRDFFloat(psz_rdf, &value, "PosePitchDegrees"))
        fmt->pose.pitch = value;

    if (getRDFFloat(psz_rdf, &value, "PoseRollDegrees"))
        fmt->pose.roll = value;


    if (getRDFFloat(psz_rdf, &value, "InitialViewHeadingDegrees"))
        fmt->pose.yaw = value;

    if (getRDFFloat(psz_rdf, &value, "InitialViewPitchDegrees"))
        fmt->pose.pitch = value;

    if (getRDFFloat(psz_rdf, &value, "InitialViewRollDegrees"))
        fmt->pose.roll = value;

    if (getRDFFloat(psz_rdf, &value, "InitialHorizontalFOVDegrees"))
        fmt->pose.fov = value;

    free(psz_rdf);
}
