
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int fts5ExprIsspace(char t){
  return t==' ' || t=='\t' || t=='\n' || t=='\r';
}
