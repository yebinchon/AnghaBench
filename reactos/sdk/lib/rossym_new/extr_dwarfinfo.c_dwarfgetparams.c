
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct TYPE_16__ {int len; scalar_t__ fde; scalar_t__ loctype; int type; int name; int unit; } ;
struct TYPE_12__ {scalar_t__ data; int len; } ;
struct TYPE_13__ {TYPE_2__ b; } ;
struct TYPE_11__ {scalar_t__ location; scalar_t__ name; } ;
struct TYPE_14__ {scalar_t__ tag; TYPE_3__ location; TYPE_1__ have; int type; int name; } ;
struct TYPE_15__ {TYPE_4__ attrs; int unit; } ;
typedef TYPE_5__ DwarfSym ;
typedef TYPE_6__ DwarfParam ;
typedef int Dwarf ;


 scalar_t__ TagFormalParameter ;
 int dwarfnextsymat (int *,TYPE_5__*,TYPE_5__*) ;
 int malloc (scalar_t__) ;
 int strcpy (int ,int ) ;
 scalar_t__ strlen (int ) ;
 int werrstr (char*,int,int ,int ,scalar_t__,scalar_t__,int ) ;

int
dwarfgetparams(Dwarf *d, DwarfSym *s, ulong pc, int pnum, DwarfParam *paramblocks)
{
 int ip = 0;
 DwarfSym param = { };
 int res = dwarfnextsymat(d, s, &param);
 while (res == 0 && ip < pnum) {
  if (param.attrs.tag == TagFormalParameter &&
   param.attrs.have.name &&
   param.attrs.have.location) {
   paramblocks[ip].name = malloc(strlen(param.attrs.name)+1);
   strcpy(paramblocks[ip].name, param.attrs.name);
   paramblocks[ip].unit = param.unit;
   paramblocks[ip].type = param.attrs.type;
            paramblocks[ip].loctype = param.attrs.have.location;
            paramblocks[ip].len = param.attrs.location.b.len;
   paramblocks[ip].fde = (ulong)param.attrs.location.b.data;
            werrstr("param[%d] block %s -> type %x loctype %x fde %x len %x",
                   ip,
                   paramblocks[ip].name,
                   paramblocks[ip].type,
                   paramblocks[ip].loctype,
                   paramblocks[ip].fde,
                   paramblocks[ip].len);
            ip++;
  }
  res = dwarfnextsymat(d, s, &param);
 }
 return ip;
}
