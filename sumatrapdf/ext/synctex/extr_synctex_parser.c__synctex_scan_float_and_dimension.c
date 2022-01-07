
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ synctex_status_t ;
typedef int * synctex_scanner_t ;


 int LC_NUMERIC ;
 size_t SYNCTEX_BUFFER_MIN_SIZE ;
 char* SYNCTEX_CUR ;
 scalar_t__ SYNCTEX_STATUS_BAD_ARGUMENT ;
 scalar_t__ SYNCTEX_STATUS_EOF ;
 scalar_t__ SYNCTEX_STATUS_ERROR ;
 scalar_t__ SYNCTEX_STATUS_OK ;
 scalar_t__ _synctex_buffer_get_available_size (int *,size_t*) ;
 int _synctex_error (char*) ;
 scalar_t__ _synctex_match_string (int *,char*) ;
 char* setlocale (int ,char*) ;
 float strtod (char*,char**) ;

synctex_status_t _synctex_scan_float_and_dimension(synctex_scanner_t scanner, float * value_ref) {
 synctex_status_t status = 0;
 char * endptr = ((void*)0);
 float f = 0;



 size_t available = 0;
 if (((void*)0) == scanner || ((void*)0) == value_ref) {
  return SYNCTEX_STATUS_BAD_ARGUMENT;
 }
 available = SYNCTEX_BUFFER_MIN_SIZE;
 status = _synctex_buffer_get_available_size(scanner, &available);
 if (status<SYNCTEX_STATUS_EOF) {
  _synctex_error("problem with float.");
  return status;
 }



 f = strtod(SYNCTEX_CUR,&endptr);



 if (endptr == SYNCTEX_CUR) {
  _synctex_error("a float was expected.");
  return SYNCTEX_STATUS_ERROR;
 }
 SYNCTEX_CUR = endptr;
 if ((status = _synctex_match_string(scanner,"in")) >= SYNCTEX_STATUS_OK) {
  f *= 72.27f*65536;
 } else if (status<SYNCTEX_STATUS_EOF) {
report_unit_error:
  _synctex_error("problem with unit.");
  return status;
 } else if ((status = _synctex_match_string(scanner,"cm")) >= SYNCTEX_STATUS_OK) {
  f *= 72.27f*65536/2.54f;
 } else if (status<0) {
  goto report_unit_error;
 } else if ((status = _synctex_match_string(scanner,"mm")) >= SYNCTEX_STATUS_OK) {
  f *= 72.27f*65536/25.4f;
 } else if (status<0) {
  goto report_unit_error;
 } else if ((status = _synctex_match_string(scanner,"pt")) >= SYNCTEX_STATUS_OK) {
  f *= 65536.0f;
 } else if (status<0) {
  goto report_unit_error;
 } else if ((status = _synctex_match_string(scanner,"bp")) >= SYNCTEX_STATUS_OK) {
  f *= 72.27f/72*65536.0f;
 } else if (status<0) {
  goto report_unit_error;
 } else if ((status = _synctex_match_string(scanner,"pc")) >= SYNCTEX_STATUS_OK) {
  f *= 12.0*65536.0f;
 } else if (status<0) {
  goto report_unit_error;
 } else if ((status = _synctex_match_string(scanner,"sp")) >= SYNCTEX_STATUS_OK) {
  f *= 1.0f;
 } else if (status<0) {
  goto report_unit_error;
 } else if ((status = _synctex_match_string(scanner,"dd")) >= SYNCTEX_STATUS_OK) {
  f *= 1238.0f/1157*65536.0f;
 } else if (status<0) {
  goto report_unit_error;
 } else if ((status = _synctex_match_string(scanner,"cc")) >= SYNCTEX_STATUS_OK) {
  f *= 14856.0f/1157*65536;
 } else if (status<0) {
  goto report_unit_error;
 } else if ((status = _synctex_match_string(scanner,"nd")) >= SYNCTEX_STATUS_OK) {
  f *= 685.0f/642*65536;
 } else if (status<0) {
  goto report_unit_error;
 } else if ((status = _synctex_match_string(scanner,"nc")) >= SYNCTEX_STATUS_OK) {
  f *= 1370.0f/107*65536;
 } else if (status<0) {
  goto report_unit_error;
 }
 *value_ref = f;
 return SYNCTEX_STATUS_OK;
}
