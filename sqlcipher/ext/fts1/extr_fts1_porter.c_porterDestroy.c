
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_tokenizer ;


 int SQLITE_OK ;
 int free (int *) ;

__attribute__((used)) static int porterDestroy(sqlite3_tokenizer *pTokenizer){
  free(pTokenizer);
  return SQLITE_OK;
}
