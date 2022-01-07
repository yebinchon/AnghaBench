
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ marker; int s; scalar_t__ restart_interval; } ;
typedef TYPE_1__ jpeg ;


 int EOI (int) ;
 scalar_t__ MARKER_none ;
 int SCAN_load ;
 scalar_t__ SOS (int) ;
 int at_eof (int ) ;
 int decode_jpeg_header (TYPE_1__*,int ) ;
 int get8 (int ) ;
 scalar_t__ get8u (int ) ;
 int get_marker (TYPE_1__*) ;
 int parse_entropy_coded_data (TYPE_1__*) ;
 int process_marker (TYPE_1__*,int) ;
 int process_scan_header (TYPE_1__*) ;

__attribute__((used)) static int decode_jpeg_image(jpeg *j)
{
   int m;
   j->restart_interval = 0;
   if (!decode_jpeg_header(j, SCAN_load)) return 0;
   m = get_marker(j);
   while (!EOI(m)) {
      if (SOS(m)) {
         if (!process_scan_header(j)) return 0;
         if (!parse_entropy_coded_data(j)) return 0;
         if (j->marker == MARKER_none ) {

            while (!at_eof(j->s)) {
               int x = get8(j->s);
               if (x == 255) {
                  j->marker = get8u(j->s);
                  break;
               } else if (x != 0) {
                  return 0;
               }
            }

         }
      } else {
         if (!process_marker(j, m)) return 0;
      }
      m = get_marker(j);
   }
   return 1;
}
