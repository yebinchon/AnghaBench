
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MATRIX ;
typedef int LONG_PTR ;
typedef int HWND ;


 int GWLP_USERDATA ;
 int SetWindowLongPtr (int ,int ,int ) ;

void SetMatrix(HWND hwnd, MATRIX *matrix)
{
 SetWindowLongPtr(hwnd, GWLP_USERDATA, (LONG_PTR)matrix);
}
