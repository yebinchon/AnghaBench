
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lo; } ;
typedef TYPE_1__ pdf_hmtx ;



__attribute__((used)) static int cmph(const void *a0, const void *b0)
{
 pdf_hmtx *a = (pdf_hmtx*)a0;
 pdf_hmtx *b = (pdf_hmtx*)b0;
 return a->lo - b->lo;
}
