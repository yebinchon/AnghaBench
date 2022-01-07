
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* synctex_scanner_t ;
typedef int synctex_decoder_t ;
struct TYPE_7__ {int count; } ;


 int SYNCTEX_STATUS_BAD_ARGUMENT ;
 int SYNCTEX_STATUS_EOF ;
 int SYNCTEX_STATUS_OK ;
 int _synctex_decode_int ;
 int _synctex_match_string (TYPE_1__*,char*) ;
 int _synctex_next_line (TYPE_1__*) ;
 int _synctex_scan_named (TYPE_1__*,char*,int *,int ) ;
 int _synctex_scan_post_scriptum (TYPE_1__*) ;

int _synctex_scan_postamble(synctex_scanner_t scanner) {
 int status = 0;
 if (((void*)0) == scanner) {
  return SYNCTEX_STATUS_BAD_ARGUMENT;
 }
 status = _synctex_match_string(scanner,"Postamble:");
 if (status < SYNCTEX_STATUS_OK) {
  return status;
 }
count_again:
 status = _synctex_next_line(scanner);
 if (status < SYNCTEX_STATUS_OK) {
  return status;
 }
 status = _synctex_scan_named(scanner,"Count:",&(scanner->count),(synctex_decoder_t)&_synctex_decode_int);
 if (status < SYNCTEX_STATUS_EOF) {
  return status;
 } else if (status < SYNCTEX_STATUS_OK) {
  status = _synctex_next_line(scanner);
  if (status<SYNCTEX_STATUS_OK) {
   return status;
  }
  goto count_again;
 }

 return _synctex_scan_post_scriptum(scanner);
}
