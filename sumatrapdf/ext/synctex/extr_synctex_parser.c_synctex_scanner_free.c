
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* synctex_scanner_t ;
struct TYPE_5__ {struct TYPE_5__* lists_of_friends; struct TYPE_5__* synctex; struct TYPE_5__* output; struct TYPE_5__* output_fmt; int input; int sheet; } ;


 int * SYNCTEX_FILE ;
 int SYNCTEX_FREE (int ) ;
 TYPE_1__* SYNCTEX_START ;
 int free (TYPE_1__*) ;
 int gzclose (int *) ;

void synctex_scanner_free(synctex_scanner_t scanner) {
 if (((void*)0) == scanner) {
  return;
 }
 if (SYNCTEX_FILE) {
  gzclose(SYNCTEX_FILE);
  SYNCTEX_FILE = ((void*)0);
 }
 SYNCTEX_FREE(scanner->sheet);
 SYNCTEX_FREE(scanner->input);
 free(SYNCTEX_START);
 free(scanner->output_fmt);
 free(scanner->output);
 free(scanner->synctex);
 free(scanner->lists_of_friends);
 free(scanner);
}
