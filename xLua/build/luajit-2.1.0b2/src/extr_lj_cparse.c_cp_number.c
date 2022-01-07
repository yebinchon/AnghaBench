
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_9__ {scalar_t__ u32; int id; } ;
struct TYPE_11__ {char c; int mode; TYPE_1__ val; int sb; } ;
struct TYPE_10__ {scalar_t__ i; } ;
typedef TYPE_2__ TValue ;
typedef scalar_t__ StrScanFmt ;
typedef int CPToken ;
typedef TYPE_3__ CPState ;


 int CPARSE_MODE_SKIP ;
 int CTID_INT32 ;
 int CTID_UINT32 ;
 int CTOK_INTEGER ;
 int LJ_ERR_XNUMBER ;
 scalar_t__ STRSCAN_INT ;
 int STRSCAN_OPT_C ;
 scalar_t__ STRSCAN_U32 ;
 int cp_errmsg (TYPE_3__*,int ,int ) ;
 int cp_get (TYPE_3__*) ;
 int cp_save (TYPE_3__*,char) ;
 scalar_t__ lj_char_isident (int ) ;
 scalar_t__ lj_strscan_scan (int const*,TYPE_2__*,int ) ;
 scalar_t__ sbufB (int *) ;

__attribute__((used)) static CPToken cp_number(CPState *cp)
{
  StrScanFmt fmt;
  TValue o;
  do { cp_save(cp, cp->c); } while (lj_char_isident(cp_get(cp)));
  cp_save(cp, '\0');
  fmt = lj_strscan_scan((const uint8_t *)sbufB(&cp->sb), &o, STRSCAN_OPT_C);
  if (fmt == STRSCAN_INT) cp->val.id = CTID_INT32;
  else if (fmt == STRSCAN_U32) cp->val.id = CTID_UINT32;
  else if (!(cp->mode & CPARSE_MODE_SKIP))
    cp_errmsg(cp, CTOK_INTEGER, LJ_ERR_XNUMBER);
  cp->val.u32 = (uint32_t)o.i;
  return CTOK_INTEGER;
}
