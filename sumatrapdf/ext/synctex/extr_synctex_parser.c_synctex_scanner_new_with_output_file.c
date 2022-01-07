
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* synctex_scanner_t ;
typedef int synctex_io_mode_t ;
typedef int * gzFile ;
typedef int _synctex_scanner_t ;
struct TYPE_5__ {char* output; char* synctex; } ;


 scalar_t__ SYNCTEX_BUFFER_MIN_SIZE ;
 scalar_t__ SYNCTEX_BUFFER_SIZE ;
 int * SYNCTEX_FILE ;
 scalar_t__ UINT_MAX ;
 int _synctex_error (char*) ;
 scalar_t__ _synctex_malloc (int) ;
 scalar_t__ _synctex_open (char const*,char const*,char**,int **,int ,int *) ;
 int free (char*) ;
 int gzclose (int *) ;
 scalar_t__ malloc (scalar_t__) ;
 char* strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;
 int synctex_ADD_QUOTES ;
 int synctex_DONT_ADD_QUOTES ;
 TYPE_1__* synctex_scanner_parse (TYPE_1__*) ;

synctex_scanner_t synctex_scanner_new_with_output_file(const char * output, const char * build_directory, int parse) {
 gzFile file = ((void*)0);
 char * synctex = ((void*)0);
 synctex_scanner_t scanner = ((void*)0);
 synctex_io_mode_t io_mode = 0;

 if (sizeof(int)>sizeof(void*)) {
  _synctex_error("INTERNAL INCONSISTENCY: int's are unexpectedly bigger than pointers, bailing out.");
  return ((void*)0);
 }

 if (SYNCTEX_BUFFER_SIZE >= UINT_MAX) {
  _synctex_error("SyncTeX BUG: Internal inconsistency, bad SYNCTEX_BUFFER_SIZE (1)");
  return ((void*)0);
 }

 if (SYNCTEX_BUFFER_SIZE < SYNCTEX_BUFFER_MIN_SIZE) {
  _synctex_error("SyncTeX BUG: Internal inconsistency, bad SYNCTEX_BUFFER_SIZE (2)");
  return ((void*)0);
 }

 if (_synctex_open(output,build_directory,&synctex,&file,synctex_ADD_QUOTES,&io_mode) || !file) {
  if (_synctex_open(output,build_directory,&synctex,&file,synctex_DONT_ADD_QUOTES,&io_mode) || !file) {
   return ((void*)0);
  }
 }
 scanner = (synctex_scanner_t)_synctex_malloc(sizeof(_synctex_scanner_t));
 if (((void*)0) == scanner) {
  _synctex_error("SyncTeX: malloc problem");
  free(synctex);
  gzclose(file);
  return ((void*)0);
 }

 if (((void*)0) == (scanner->output = (char *)malloc(strlen(output)+1))){
  _synctex_error("!  synctex_scanner_new_with_output_file: Memory problem (2), scanner's output is not reliable.");
 } else if (scanner->output != strcpy(scanner->output,output)) {
  _synctex_error("!  synctex_scanner_new_with_output_file: Copy problem, scanner's output is not reliable.");
 }
 scanner->synctex = synctex;
 SYNCTEX_FILE = file;
 return parse? synctex_scanner_parse(scanner):scanner;
}
