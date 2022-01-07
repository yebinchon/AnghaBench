
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lo; } ;
typedef TYPE_1__ pdf_vmtx ;



__attribute__((used)) static int cmpv(const void *a0, const void *b0)
{
 pdf_vmtx *a = (pdf_vmtx*)a0;
 pdf_vmtx *b = (pdf_vmtx*)b0;
 return a->lo - b->lo;
}
