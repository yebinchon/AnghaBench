
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_6__ {int varinfo; int uvinfo; } ;
struct TYPE_5__ {int sb; } ;
typedef TYPE_1__ LexState ;
typedef TYPE_2__ GCproto ;


 int memcpy (char*,int ,int ) ;
 int sbufB (int *) ;
 int sbuflen (int *) ;
 int setmref (int ,char*) ;

__attribute__((used)) static void fs_fixup_var(LexState *ls, GCproto *pt, uint8_t *p, size_t ofsvar)
{
  setmref(pt->uvinfo, p);
  setmref(pt->varinfo, (char *)p + ofsvar);
  memcpy(p, sbufB(&ls->sb), sbuflen(&ls->sb));
}
