
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int HWND ;


 int HDM_GETITEMCOUNT ;
 int SendMessageA (int ,int ,int ,int ) ;

__attribute__((used)) static LONG getItemCount(HWND hdex)
{
    return SendMessageA(hdex, HDM_GETITEMCOUNT, 0, 0);
}
