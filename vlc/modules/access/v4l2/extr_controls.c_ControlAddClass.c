
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_v4l2_ctrl_t ;
typedef int vlc_object_t ;
struct v4l2_queryctrl {int name; } ;


 int msg_Dbg (int *,char*,int ) ;

__attribute__((used)) static vlc_v4l2_ctrl_t *ControlAddClass (vlc_object_t *obj, int fd,
                                         const struct v4l2_queryctrl *query)
{
    msg_Dbg (obj, "control class %s:", query->name);
    (void) fd;
    return ((void*)0);
}
