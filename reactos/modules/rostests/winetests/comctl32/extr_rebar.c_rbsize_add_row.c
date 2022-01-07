
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* cyRowHeights; size_t nRows; } ;
typedef TYPE_1__ rbsize_result_t ;



__attribute__((used)) static void rbsize_add_row(rbsize_result_t *rbsr, int rowHeight) {
    rbsr->cyRowHeights[rbsr->nRows] = rowHeight;
    rbsr->nRows++;
}
