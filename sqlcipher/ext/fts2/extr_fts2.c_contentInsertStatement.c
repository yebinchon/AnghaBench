
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nColumn; int azContentColumn; } ;
typedef TYPE_1__ fulltext_vtab ;
typedef int StringBuffer ;


 int append (int *,char*) ;
 int appendList (int *,int,int ) ;
 int initStringBuffer (int *) ;
 char const* stringBufferData (int *) ;

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
  return stringBufferData(&sb);
}
