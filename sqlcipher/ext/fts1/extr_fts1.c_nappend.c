
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int len; int alloced; scalar_t__* s; } ;
typedef TYPE_1__ StringBuffer ;


 int initStringBuffer (TYPE_1__*) ;
 int memcpy (scalar_t__*,char const*,int) ;
 scalar_t__* realloc (scalar_t__*,int) ;

__attribute__((used)) static void nappend(StringBuffer *sb, const char *zFrom, int nFrom){
  if( sb->len + nFrom >= sb->alloced ){
    sb->alloced = sb->len + nFrom + 100;
    sb->s = realloc(sb->s, sb->alloced+1);
    if( sb->s==0 ){
      initStringBuffer(sb);
      return;
    }
  }
  memcpy(sb->s + sb->len, zFrom, nFrom);
  sb->len += nFrom;
  sb->s[sb->len] = 0;
}
