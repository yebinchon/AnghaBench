
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int ulong ;
typedef int uchar ;
struct TYPE_21__ {size_t name; int off; int type; int haveoff; } ;
struct TYPE_20__ {int nattr; TYPE_1__* attr; int haskids; int tag; } ;
struct TYPE_19__ {int haskids; int tag; } ;
struct TYPE_18__ {int d; } ;
struct TYPE_17__ {int name; int form; } ;
typedef TYPE_2__ DwarfBuf ;
typedef TYPE_3__ DwarfAttrs ;
typedef TYPE_4__ DwarfAbbrev ;


 int DwarfAttrMax ;
 size_t DwarfAttrName ;
 int FormIndirect ;
 int TAddress ;
 int TBlock ;
 int TConstant ;
 int TFlag ;
 int TReference ;
 int TString ;
 int constblock (int ,void*,void*) ;
 int dwarfget128 (TYPE_2__*) ;
 scalar_t__ getblock (TYPE_2__*,int,void*) ;
 scalar_t__ getstring (TYPE_2__*,int,void*) ;
 scalar_t__ getuchar (TYPE_2__*,int,void*) ;
 scalar_t__ getulong (TYPE_2__*,int,int ,void*,int*) ;
 int memset (TYPE_3__*,int ,int) ;
 TYPE_6__* plist ;
 TYPE_6__* ptab ;
 scalar_t__ skipform (TYPE_2__*,int) ;
 int werrstr (char*,int) ;

__attribute__((used)) static int
parseattrs(DwarfBuf *b, ulong unit, DwarfAbbrev *a, DwarfAttrs *attrs)
{
 int i, f, n, got;
 static int nbad;
 void *v;


 if(ptab[DwarfAttrName].name != DwarfAttrName)
  for(i=0; plist[i].name; i++)
   ptab[plist[i].name] = plist[i];

 memset(attrs, 0, sizeof *attrs);
 attrs->tag = a->tag;
 attrs->haskids = a->haskids;

 for(i=0; i<a->nattr; i++){
  n = a->attr[i].name;
  f = a->attr[i].form;
  if(n < 0 || n >= DwarfAttrMax || ptab[n].name==0){
   if(++nbad == 1)
    werrstr("dwarf parse attrs: unexpected attribute name 0x%x", n);
   continue;
  }
  v = (char*)attrs + ptab[n].off;
  got = 0;
  if(f == FormIndirect)
   f = dwarfget128(b);
  if((ptab[n].type&(TConstant|TReference|TAddress))
  && getulong(b, f, unit, v, &got) >= 0)
   ;
  else if((ptab[n].type&TFlag) && getuchar(b, f, v) >= 0)
   got = TFlag;
  else if((ptab[n].type&TString) && getstring(b, f, v) >= 0)
   got = TString;
  else if((ptab[n].type&TBlock) && getblock(b, f, v) >= 0)
   got = TBlock;
  else{
   if(skipform(b, f) < 0){
    if(++nbad == 1)
     werrstr("dwarf parse attrs: cannot skip form %d", f);
    return -1;
   }
  }
  if(got == TBlock && (ptab[n].type&TConstant))
   got = constblock(b->d, v, v);
  *((uchar*)attrs+ptab[n].haveoff) = got;
 }
 return 0;
}
