
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__* LPCNAMED_FORMAT ;


 int strcmpiW (int ,int ) ;

__attribute__((used)) static int FormatCompareFn(const void *l, const void *r)
{
  return strcmpiW(((LPCNAMED_FORMAT)l)->name, ((LPCNAMED_FORMAT)r)->name);
}
