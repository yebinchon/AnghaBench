
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_10__ {int n; } ;
typedef TYPE_1__ cTValue ;
struct TYPE_11__ {int len; } ;
typedef int SBuf ;
typedef int MSize ;


 int STRFMT_G14 ;
 int intV (TYPE_1__*) ;
 int lj_buf_tmp_ (int *) ;
 int * lj_strfmt_putfnum (int ,int ,int ) ;
 int * lj_strfmt_putint (int ,int ) ;
 char const* sbufB (int *) ;
 int sbuflen (int *) ;
 TYPE_6__* strV (TYPE_1__*) ;
 char const* strVdata (TYPE_1__*) ;
 scalar_t__ tvisint (TYPE_1__*) ;
 scalar_t__ tvisnum (TYPE_1__*) ;
 scalar_t__ tvisstr (TYPE_1__*) ;

const char *lj_strfmt_wstrnum(lua_State *L, cTValue *o, MSize *lenp)
{
  SBuf *sb;
  if (tvisstr(o)) {
    *lenp = strV(o)->len;
    return strVdata(o);
  } else if (tvisint(o)) {
    sb = lj_strfmt_putint(lj_buf_tmp_(L), intV(o));
  } else if (tvisnum(o)) {
    sb = lj_strfmt_putfnum(lj_buf_tmp_(L), STRFMT_G14, o->n);
  } else {
    return ((void*)0);
  }
  *lenp = sbuflen(sb);
  return sbufB(sb);
}
