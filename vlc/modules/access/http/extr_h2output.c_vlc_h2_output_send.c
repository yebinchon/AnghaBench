
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlc_h2_output {int queue; } ;
struct vlc_h2_frame {int dummy; } ;


 int vlc_h2_output_queue (struct vlc_h2_output*,int *,struct vlc_h2_frame*) ;

int vlc_h2_output_send(struct vlc_h2_output *out, struct vlc_h2_frame *f)
{
    return vlc_h2_output_queue(out, &out->queue, f);
}
