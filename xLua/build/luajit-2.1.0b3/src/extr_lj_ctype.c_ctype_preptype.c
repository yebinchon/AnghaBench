
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int needsp; int cts; } ;
struct TYPE_14__ {int name; } ;
struct TYPE_13__ {int len; } ;
typedef int MSize ;
typedef TYPE_1__ GCstr ;
typedef TYPE_2__ CType ;
typedef TYPE_3__ CTRepr ;
typedef int CTInfo ;


 int ctype_prepc (TYPE_3__*,char) ;
 int ctype_prepnum (TYPE_3__*,int ) ;
 int ctype_prepqual (TYPE_3__*,int ) ;
 int ctype_prepstr (TYPE_3__*,char const*,int ) ;
 int ctype_typeid (int ,TYPE_2__*) ;
 TYPE_1__* gco2str (scalar_t__) ;
 scalar_t__ gcref (int ) ;
 char const* strdata (TYPE_1__*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void ctype_preptype(CTRepr *ctr, CType *ct, CTInfo qual, const char *t)
{
  if (gcref(ct->name)) {
    GCstr *str = gco2str(gcref(ct->name));
    ctype_prepstr(ctr, strdata(str), str->len);
  } else {
    if (ctr->needsp) ctype_prepc(ctr, ' ');
    ctype_prepnum(ctr, ctype_typeid(ctr->cts, ct));
    ctr->needsp = 1;
  }
  ctype_prepstr(ctr, t, (MSize)strlen(t));
  ctype_prepqual(ctr, qual);
}
