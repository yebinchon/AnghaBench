
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t nBands; TYPE_1__* bands; } ;
typedef TYPE_2__ rbsize_result_t ;
typedef int UINT ;
struct TYPE_4__ {int cx; int fStyle; int rc; } ;
typedef int DWORD ;


 int SetRect (int *,int,int,int,int) ;

__attribute__((used)) static void rbsize_add_band(rbsize_result_t *rbsr, int left, int top, int right, int bottom, DWORD fStyle, UINT cx)
{
    SetRect(&(rbsr->bands[rbsr->nBands].rc), left, top, right, bottom);
    rbsr->bands[rbsr->nBands].fStyle = fStyle;
    rbsr->bands[rbsr->nBands].cx = cx;
    rbsr->nBands++;
}
