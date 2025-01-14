
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int i_beginx; int i_beginy; int i_lasty; int b_2fingers; int i_type; double f_lastzoom; scalar_t__ i_ullArguments; int i_action; } ;
typedef TYPE_2__ win32_gesture_sys_t ;
typedef int vlc_object_t ;
struct TYPE_6__ {int x; int y; } ;
struct TYPE_8__ {int dwID; int dwFlags; scalar_t__ ullArguments; TYPE_1__ ptsLocation; } ;
typedef TYPE_3__ GESTUREINFO ;
typedef int DWORD ;
typedef int BOOL ;


 int ACTIONID_JUMP_BACKWARD_SHORT ;
 int ACTIONID_JUMP_FORWARD_SHORT ;
 int ACTIONID_PLAY_PAUSE ;
 int ACTIONID_VIEWPOINT_FOV_IN ;
 int ACTIONID_VIEWPOINT_FOV_OUT ;
 int ACTIONID_VOL_DOWN ;
 int ACTIONID_VOL_UP ;
 int FALSE ;
 int GESTURE_ACTION_JUMP ;
 int GESTURE_ACTION_UNDEFINED ;
 int GESTURE_ACTION_VOLUME ;






 int TRUE ;

 int abs (int) ;
 int var_SetInteger (int ,char*,int) ;
 int vlc_object_instance (int *) ;

__attribute__((used)) static BOOL DecodeGestureProjection( vlc_object_t *p_this, win32_gesture_sys_t *p_gesture, const GESTUREINFO* p_gi )
{


    BOOL bHandled = FALSE;
    switch ( p_gi->dwID )
    {
        case 133:

            p_gesture->i_beginx = p_gi->ptsLocation.x;
            p_gesture->i_beginy = p_gi->ptsLocation.y;
            p_gesture->i_lasty = p_gesture->i_beginy;
            p_gesture->b_2fingers = 0;
            break;
        case 132:
            if( p_gesture->i_type != 0 &&
                p_gesture->i_action == GESTURE_ACTION_JUMP )
            {
                int action_id;
                if( p_gesture->b_2fingers )
                {
                    if( p_gesture->i_beginx > p_gi->ptsLocation.x )
                        action_id = ACTIONID_JUMP_BACKWARD_SHORT;
                    else
                        action_id = ACTIONID_JUMP_FORWARD_SHORT;
                    var_SetInteger( vlc_object_instance(p_this), "key-action", action_id );
                }
            }

            p_gesture->i_action = GESTURE_ACTION_UNDEFINED;
            p_gesture->i_type = p_gesture->i_beginx = p_gesture->i_beginy = -1;
            p_gesture->b_2fingers = 0;
            break;
        case 131:

            p_gesture->i_type = 131;
            bHandled = TRUE;
            if (p_gi->dwFlags & 134) {
                p_gesture->i_beginx = p_gi->ptsLocation.x;
                p_gesture->i_beginy = p_gi->ptsLocation.y;
            }

            if( (DWORD)p_gi->ullArguments > 0 )
                p_gesture->b_2fingers = 1;

            if( p_gesture->b_2fingers && p_gesture->i_action == GESTURE_ACTION_UNDEFINED )
            {
                if( abs( p_gesture->i_beginx - p_gi->ptsLocation.x ) +
                    abs( p_gesture->i_beginy - p_gi->ptsLocation.y ) > 50 )
                {
                    if( abs( p_gesture->i_beginx - p_gi->ptsLocation.x ) >
                        abs( p_gesture->i_beginy - p_gi->ptsLocation.y ) )
                        p_gesture->i_action = GESTURE_ACTION_JUMP;
                    else
                        p_gesture->i_action = GESTURE_ACTION_VOLUME;
                }
            }

            if( p_gesture->i_action == GESTURE_ACTION_VOLUME )
            {
                int offset = p_gesture->i_lasty - p_gi->ptsLocation.y;

                if( offset > 100)
                    var_SetInteger( vlc_object_instance(p_this), "key-action", ACTIONID_VOL_UP );
                else if( offset < -100)
                    var_SetInteger( vlc_object_instance(p_this), "key-action", ACTIONID_VOL_DOWN );
                else
                    break;

                p_gesture->i_lasty = p_gi->ptsLocation.y;
            }
            break;
        case 130:
            p_gesture->i_type = 130;
            var_SetInteger( vlc_object_instance(p_this), "key-action", ACTIONID_PLAY_PAUSE );
            bHandled = TRUE;
            break;
        case 129:
            p_gesture->i_type = 129;
            bHandled = TRUE;
            switch( p_gi->dwFlags )
            {
                case 134:
                    p_gesture->i_ullArguments = p_gi->ullArguments;
                    p_gesture->f_lastzoom = 1.0;
                    break;
                default:
                {
                    double k = (double)(p_gi->ullArguments) /
                               (double)(p_gesture->i_ullArguments);

                    if (k > p_gesture->f_lastzoom * 1.01)
                    {
                        var_SetInteger( vlc_object_instance(p_this), "key-action", ACTIONID_VIEWPOINT_FOV_IN );
                        p_gesture->f_lastzoom = k;
                    }
                    else if (k < p_gesture->f_lastzoom * 0.99)
                    {
                        var_SetInteger( vlc_object_instance(p_this), "key-action", ACTIONID_VIEWPOINT_FOV_OUT );
                        p_gesture->f_lastzoom = k;
                    }
                    break;
                }
            }
            break;
        case 128:
            bHandled = TRUE;
            break;
        default:
            break;
    }
    return bHandled;
}
