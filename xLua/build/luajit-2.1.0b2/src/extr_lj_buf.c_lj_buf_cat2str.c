
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_7__ {int len; } ;
typedef int MSize ;
typedef TYPE_1__ GCstr ;


 char* lj_buf_tmp (int *,int) ;
 TYPE_1__* lj_str_new (int *,char*,int) ;
 int memcpy (char*,int ,int) ;
 int strdata (TYPE_1__*) ;

GCstr *lj_buf_cat2str(lua_State *L, GCstr *s1, GCstr *s2)
{
  MSize len1 = s1->len, len2 = s2->len;
  char *buf = lj_buf_tmp(L, len1 + len2);
  memcpy(buf, strdata(s1), len1);
  memcpy(buf+len1, strdata(s2), len2);
  return lj_str_new(L, buf, len1 + len2);
}
