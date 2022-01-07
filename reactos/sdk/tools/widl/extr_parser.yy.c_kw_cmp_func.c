
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kw; } ;


 TYPE_1__* KWP (void const*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int kw_cmp_func(const void *s1, const void *s2)
{
 return strcmp(KWP(s1)->kw, KWP(s2)->kw);
}
