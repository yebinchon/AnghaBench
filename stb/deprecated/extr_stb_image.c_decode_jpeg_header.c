
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int marker; int s; } ;
typedef TYPE_1__ jpeg ;


 int MARKER_none ;
 int SCAN_type ;
 int SOF (int) ;
 int SOI (int) ;
 scalar_t__ at_eof (int ) ;
 int e (char*,char*) ;
 int get_marker (TYPE_1__*) ;
 int process_frame_header (TYPE_1__*,int) ;
 int process_marker (TYPE_1__*,int) ;

__attribute__((used)) static int decode_jpeg_header(jpeg *z, int scan)
{
   int m;
   z->marker = MARKER_none;
   m = get_marker(z);
   if (!SOI(m)) return e("no SOI","Corrupt JPEG");
   if (scan == SCAN_type) return 1;
   m = get_marker(z);
   while (!SOF(m)) {
      if (!process_marker(z,m)) return 0;
      m = get_marker(z);
      while (m == MARKER_none) {

         if (at_eof(z->s)) return e("no SOF", "Corrupt JPEG");
         m = get_marker(z);
      }
   }
   if (!process_frame_header(z, scan)) return 0;
   return 1;
}
