
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; } ;
typedef TYPE_1__ fz_range ;



__attribute__((used)) static int rangecmp(const void *a_, const void *b_)
{
 const fz_range *a = (const fz_range *) a_;
 const fz_range *b = (const fz_range *) b_;
 return (int) (a->offset - b->offset);
}
