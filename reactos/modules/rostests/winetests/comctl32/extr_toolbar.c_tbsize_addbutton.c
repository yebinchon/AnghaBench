
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t nButtons; int * prcButtons; } ;
typedef TYPE_1__ tbsize_result_t ;


 int SetRect (int *,int,int,int,int) ;

__attribute__((used)) static void tbsize_addbutton(tbsize_result_t *tbsr, int left, int top, int right, int bottom) {
    SetRect(&tbsr->prcButtons[tbsr->nButtons], left, top, right, bottom);
    tbsr->nButtons++;
}
