
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int32_t ;
struct TYPE_4__ {int size; } ;
typedef int GCtab ;
typedef TYPE_1__ CType ;
typedef int CTState ;
typedef int CTInfo ;


 int cconv_substruct_tab (int *,TYPE_1__*,int *,int *,int *,int ) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static void cconv_struct_tab(CTState *cts, CType *d,
        uint8_t *dp, GCtab *t, CTInfo flags)
{
  int32_t i = 0;
  memset(dp, 0, d->size);
  cconv_substruct_tab(cts, d, dp, t, &i, flags);
}
