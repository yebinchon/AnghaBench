
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int psz_string; int i_int; int b_bool; } ;
typedef TYPE_1__ vlc_value_t ;
struct TYPE_9__ {int type; } ;
typedef TYPE_2__ vlc_v4l2_ctrl_t ;
typedef int vlc_object_t ;


 int ControlSet (TYPE_2__ const*,int ) ;
 int ControlSet64 (TYPE_2__ const*,int ) ;
 int ControlSetStr (TYPE_2__ const*,int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int errno ;
 int msg_Err (int *,char*,char const*,int ) ;
 int vlc_assert_unreachable () ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static int ControlSetCallback (vlc_object_t *obj, const char *var,
                               vlc_value_t old, vlc_value_t cur, void *data)
{
    const vlc_v4l2_ctrl_t *ctrl = data;
    int ret;

    switch (ctrl->type)
    {
        case 132:
        case 129:
        case 135:
        case 130:
            ret = ControlSet (ctrl, cur.i_int);
            break;
        case 134:
            ret = ControlSet (ctrl, cur.b_bool);
            break;
        case 133:
            ret = ControlSet (ctrl, 0);
            break;
        case 131:
            ret = ControlSet64 (ctrl, cur.i_int);
            break;
        case 128:
            ret = ControlSetStr (ctrl, cur.psz_string);
            break;
        default:
            vlc_assert_unreachable ();
    }

    if (ret)
    {
        msg_Err (obj, "cannot set control %s: %s", var, vlc_strerror_c(errno));
        return VLC_EGENERIC;
    }
    (void) old;
    return VLC_SUCCESS;
}
