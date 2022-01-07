
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int nColumn; int azContentColumn; } ;
typedef TYPE_1__ fulltext_vtab ;
struct TYPE_8__ {char const* s; } ;
typedef TYPE_2__ StringBuffer ;


 int append (TYPE_2__*,char*) ;
 int appendList (TYPE_2__*,int,int ) ;
 int initStringBuffer (TYPE_2__*) ;

__attribute__((used)) static const char *contentInsertStatement(fulltext_vtab *v){
  StringBuffer sb;
  int i;

  initStringBuffer(&sb);
  append(&sb, "insert into %_content (rowid, ");
  appendList(&sb, v->nColumn, v->azContentColumn);
  append(&sb, ") values (?");
  for(i=0; i<v->nColumn; ++i)
    append(&sb, ", ?");
  append(&sb, ")");
  return sb.s;
}
