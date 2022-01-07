
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int (* OurCloseGestureInfoHandle ) (int ) ;scalar_t__ (* DecodeGestureImpl ) (int *,TYPE_1__*,TYPE_2__*) ;scalar_t__ (* OurGetGestureInfo ) (int ,TYPE_2__*) ;} ;
typedef TYPE_1__ win32_gesture_sys_t ;
typedef int vlc_object_t ;
typedef int WPARAM ;
typedef int UINT ;
struct TYPE_9__ {int cbSize; } ;
typedef int LRESULT ;
typedef scalar_t__ LPARAM ;
typedef int HWND ;
typedef int HGESTUREINFO ;
typedef TYPE_2__ GESTUREINFO ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 int DefWindowProc (int ,int ,int ,scalar_t__) ;
 scalar_t__ FALSE ;
 scalar_t__ GetLastError () ;
 int ZeroMemory (TYPE_2__*,int) ;
 int msg_Err (int *,char*) ;
 scalar_t__ stub1 (int ,TYPE_2__*) ;
 scalar_t__ stub2 (int *,TYPE_1__*,TYPE_2__*) ;
 int stub3 (int ) ;

LRESULT DecodeGesture( vlc_object_t *p_this, win32_gesture_sys_t *p_gesture,
                       HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam )
{
    if( !p_gesture )
        return DefWindowProc( hWnd, message, wParam, lParam );

    GESTUREINFO gi;
    ZeroMemory( &gi, sizeof( GESTUREINFO ) );
    gi.cbSize = sizeof( GESTUREINFO );

    BOOL bResult = p_gesture->OurGetGestureInfo((HGESTUREINFO)lParam, &gi);
    BOOL bHandled = FALSE;

    if( bResult )
        bHandled = p_gesture->DecodeGestureImpl(p_this, p_gesture, &gi);
    else
    {
        DWORD dwErr = GetLastError();
        if( dwErr > 0 )
            msg_Err( p_this, "Could not retrieve a valid GESTUREINFO structure" );
    }

    if( bHandled )
    {


        p_gesture->OurCloseGestureInfoHandle((HGESTUREINFO)lParam);
        return 0;
    }
    else
        return DefWindowProc( hWnd, message, wParam, lParam );
}
