
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MATRIX ;
typedef int HWND ;


 int GWLP_USERDATA ;
 scalar_t__ GetWindowLongPtr (int ,int ) ;

MATRIX *GetMatrix(HWND hwnd)
{
 return (MATRIX *)GetWindowLongPtr(hwnd, GWLP_USERDATA);
}
