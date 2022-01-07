
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ulong ;
typedef int u64int ;
typedef int schar ;
typedef int s64int ;
typedef int s32int ;
typedef int s16int ;
struct TYPE_13__ {scalar_t__ len; scalar_t__ data; } ;
struct TYPE_12__ {int * d; scalar_t__ ep; scalar_t__ p; } ;
typedef TYPE_1__ DwarfBuf ;
typedef TYPE_2__ DwarfBlock ;
typedef int Dwarf ;
 int TBlock ;
 int TConstant ;
 int dwarfget1 (TYPE_1__*) ;
 int dwarfget128 (TYPE_1__*) ;
 int dwarfget128s (TYPE_1__*) ;
 int dwarfget2 (TYPE_1__*) ;
 int dwarfget4 (TYPE_1__*) ;
 int dwarfget8 (TYPE_1__*) ;
 int dwarfgetaddr (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int
constblock(Dwarf *d, DwarfBlock *bl, ulong *pval)
{
 DwarfBuf b;

 memset(&b, 0, sizeof b);
 b.p = bl->data;
 b.ep = bl->data+bl->len;
 b.d = d;

 switch(dwarfget1(&b)){
 case 139:
  *pval = dwarfgetaddr(&b);
  return TConstant;
 case 137:
  *pval = dwarfget1(&b);
  return TConstant;
 case 138:
  *pval = (schar)dwarfget1(&b);
  return TConstant;
 case 135:
  *pval = dwarfget2(&b);
  return TConstant;
 case 136:
  *pval = (s16int)dwarfget2(&b);
  return TConstant;
 case 133:
  *pval = dwarfget4(&b);
  return TConstant;
 case 134:
  *pval = (s32int)dwarfget4(&b);
  return TConstant;
 case 131:
  *pval = (u64int)dwarfget8(&b);
  return TConstant;
 case 132:
  *pval = (s64int)dwarfget8(&b);
  return TConstant;
 case 129:
  *pval = dwarfget128(&b);
  return TConstant;
 case 130:
  *pval = dwarfget128s(&b);
  return TConstant;
 case 128:
  *pval = dwarfget128(&b);
  return TConstant;
 default:
  return TBlock;
 }
}
