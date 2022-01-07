
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct swaybar_output {TYPE_1__* bar; } ;
struct status_line {int protocol; } ;
typedef int cairo_t ;
struct TYPE_2__ {struct status_line* status; } ;






 int render_status_line_error (int *,struct swaybar_output*,double*) ;
 int render_status_line_i3bar (int *,struct swaybar_output*,double*) ;
 int render_status_line_text (int *,struct swaybar_output*,double*) ;

__attribute__((used)) static uint32_t render_status_line(cairo_t *cairo,
  struct swaybar_output *output, double *x) {
 struct status_line *status = output->bar->status;
 switch (status->protocol) {
 case 131:
  return render_status_line_error(cairo, output, x);
 case 129:
  return render_status_line_text(cairo, output, x);
 case 130:
  return render_status_line_i3bar(cairo, output, x);
 case 128:
  return 0;
 }
 return 0;
}
