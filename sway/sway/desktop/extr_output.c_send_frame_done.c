
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct sway_output {int dummy; } ;


 int output_for_each_surface (struct sway_output*,int ,struct timespec*) ;
 int send_frame_done_iterator ;

__attribute__((used)) static void send_frame_done(struct sway_output *output, struct timespec *when) {
 output_for_each_surface(output, send_frame_done_iterator, when);
}
