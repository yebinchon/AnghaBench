
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nColumn; char** azContentColumn; } ;
typedef TYPE_1__ fulltext_vtab ;
struct TYPE_7__ {char const* s; } ;
typedef TYPE_2__ StringBuffer ;


 int append (TYPE_2__*,char*) ;
 int initStringBuffer (TYPE_2__*) ;

__attribute__((used)) static const char *contentUpdateStatement(fulltext_vtab *v){
  StringBuffer sb;
  int i;

  initStringBuffer(&sb);
  append(&sb, "update %_content set ");
  for(i=0; i<v->nColumn; ++i) {
    if( i>0 ){
      append(&sb, ", ");
    }
    append(&sb, v->azContentColumn[i]);
    append(&sb, " = ?");
  }
  append(&sb, " where rowid = ?");
  return sb.s;
}
