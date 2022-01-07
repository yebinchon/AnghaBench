
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_tokenizer ;
typedef int mm_tokenizer_t ;


 int SQLITE_OK ;
 int sqlite3_free (int *) ;

__attribute__((used)) static int mmtok_destroy(sqlite3_tokenizer *pTokenizer)
{
    mm_tokenizer_t *tok = (mm_tokenizer_t *) pTokenizer;
    sqlite3_free(tok);
    return SQLITE_OK;
}
