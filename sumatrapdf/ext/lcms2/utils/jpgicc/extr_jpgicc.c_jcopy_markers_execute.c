
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* jpeg_saved_marker_ptr ;
typedef TYPE_2__* j_decompress_ptr ;
typedef TYPE_3__* j_compress_ptr ;
struct TYPE_9__ {scalar_t__ write_Adobe_marker; scalar_t__ write_JFIF_header; } ;
struct TYPE_8__ {TYPE_1__* marker_list; } ;
struct TYPE_7__ {scalar_t__ marker; int data_length; int * data; struct TYPE_7__* next; } ;


 int GETJOCTET (int ) ;
 scalar_t__ JPEG_APP0 ;
 int jpeg_write_marker (TYPE_3__*,scalar_t__,int *,int) ;

__attribute__((used)) static
void jcopy_markers_execute(j_decompress_ptr srcinfo, j_compress_ptr dstinfo)
{
  jpeg_saved_marker_ptr marker;






  for (marker = srcinfo->marker_list; marker != ((void*)0); marker = marker->next) {

    if (dstinfo->write_JFIF_header &&
        marker->marker == JPEG_APP0 &&
        marker->data_length >= 5 &&
        GETJOCTET(marker->data[0]) == 0x4A &&
        GETJOCTET(marker->data[1]) == 0x46 &&
        GETJOCTET(marker->data[2]) == 0x49 &&
        GETJOCTET(marker->data[3]) == 0x46 &&
        GETJOCTET(marker->data[4]) == 0)
                          continue;

    if (dstinfo->write_Adobe_marker &&
        marker->marker == JPEG_APP0+14 &&
        marker->data_length >= 5 &&
        GETJOCTET(marker->data[0]) == 0x41 &&
        GETJOCTET(marker->data[1]) == 0x64 &&
        GETJOCTET(marker->data[2]) == 0x6F &&
        GETJOCTET(marker->data[3]) == 0x62 &&
        GETJOCTET(marker->data[4]) == 0x65)
                         continue;

     jpeg_write_marker(dstinfo, marker->marker,
                       marker->data, marker->data_length);
  }
}
