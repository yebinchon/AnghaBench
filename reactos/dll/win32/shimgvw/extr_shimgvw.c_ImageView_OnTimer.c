
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HWND ;
typedef int DWORD ;


 int ANIME_TIMER_ID ;
 scalar_t__ Anime_Step (int *) ;
 int FALSE ;
 int InvalidateRect (int ,int *,int ) ;
 int KillTimer (int ,int ) ;
 int SetTimer (int ,int ,int ,int *) ;

__attribute__((used)) static void ImageView_OnTimer(HWND hwnd)
{
    DWORD dwDelay;

    KillTimer(hwnd, ANIME_TIMER_ID);
    InvalidateRect(hwnd, ((void*)0), FALSE);

    if (Anime_Step(&dwDelay))
    {
        SetTimer(hwnd, ANIME_TIMER_ID, dwDelay, ((void*)0));
    }
}
