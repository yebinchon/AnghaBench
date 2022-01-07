
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_tokenizer_module ;


 int simpleTokenizerModule ;

void get_simple_tokenizer_module(
  sqlite3_tokenizer_module **ppModule
){
  *ppModule = &simpleTokenizerModule;
}
