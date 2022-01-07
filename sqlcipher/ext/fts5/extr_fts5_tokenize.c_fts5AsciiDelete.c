
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Fts5Tokenizer ;


 int sqlite3_free (int *) ;

__attribute__((used)) static void fts5AsciiDelete(Fts5Tokenizer *p){
  sqlite3_free(p);
}
