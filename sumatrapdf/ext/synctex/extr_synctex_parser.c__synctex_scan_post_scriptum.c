
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ synctex_status_t ;
typedef TYPE_1__* synctex_scanner_t ;
struct TYPE_6__ {int y_offset; int x_offset; int unit; } ;


 int LC_NUMERIC ;
 char* SYNCTEX_CUR ;
 scalar_t__ SYNCTEX_STATUS_BAD_ARGUMENT ;
 scalar_t__ SYNCTEX_STATUS_EOF ;
 scalar_t__ SYNCTEX_STATUS_ERROR ;
 scalar_t__ SYNCTEX_STATUS_NOT_OK ;
 scalar_t__ SYNCTEX_STATUS_OK ;
 int _synctex_error (char*) ;
 scalar_t__ _synctex_match_string (TYPE_1__*,char*) ;
 scalar_t__ _synctex_next_line (TYPE_1__*) ;
 scalar_t__ _synctex_scan_float_and_dimension (TYPE_1__*,int *) ;
 char* setlocale (int ,char*) ;
 int strtod (char*,char**) ;

synctex_status_t _synctex_scan_post_scriptum(synctex_scanner_t scanner) {
 synctex_status_t status = 0;
 char * endptr = ((void*)0);



 if (((void*)0) == scanner) {
  return SYNCTEX_STATUS_BAD_ARGUMENT;
 }

post_scriptum_not_found:
 status = _synctex_match_string(scanner,"Post scriptum:");
 if (status<SYNCTEX_STATUS_NOT_OK) {
  return status;
 }
 if (status == SYNCTEX_STATUS_NOT_OK) {
  status = _synctex_next_line(scanner);
  if (status<SYNCTEX_STATUS_EOF) {
   return status;
  } else if (status<SYNCTEX_STATUS_OK) {
   return SYNCTEX_STATUS_OK;
  }
  goto post_scriptum_not_found;
 }

next_line:
 status = _synctex_next_line(scanner);
 if (status<SYNCTEX_STATUS_EOF) {
  return status;
 } else if (status<SYNCTEX_STATUS_OK) {
  return SYNCTEX_STATUS_OK;
 }

 status = _synctex_match_string(scanner,"Magnification:");
 if (status == SYNCTEX_STATUS_OK ) {



  scanner->unit = strtod(SYNCTEX_CUR,&endptr);



  if (endptr == SYNCTEX_CUR) {
   _synctex_error("bad magnification in the post scriptum, a float was expected.");
   return SYNCTEX_STATUS_ERROR;
  }
  if (scanner->unit<=0) {
   _synctex_error("bad magnification in the post scriptum, a positive float was expected.");
   return SYNCTEX_STATUS_ERROR;
  }
  SYNCTEX_CUR = endptr;
  goto next_line;
 }
 if (status<SYNCTEX_STATUS_EOF){
report_record_problem:
  _synctex_error("Problem reading the Post Scriptum records");
  return status;
 }
 status = _synctex_match_string(scanner,"X Offset:");
 if (status == SYNCTEX_STATUS_OK) {
  status = _synctex_scan_float_and_dimension(scanner, &(scanner->x_offset));
  if (status<SYNCTEX_STATUS_OK) {
   _synctex_error("problem with X offset in the Post Scriptum.");
   return status;
  }
  goto next_line;
 } else if (status<SYNCTEX_STATUS_EOF){
  goto report_record_problem;
 }
 status = _synctex_match_string(scanner,"Y Offset:");
 if (status==SYNCTEX_STATUS_OK) {
  status = _synctex_scan_float_and_dimension(scanner, &(scanner->y_offset));
  if (status<SYNCTEX_STATUS_OK) {
   _synctex_error("problem with Y offset in the Post Scriptum.");
   return status;
  }
  goto next_line;
 } else if (status<SYNCTEX_STATUS_EOF){
  goto report_record_problem;
 }
 goto next_line;
}
