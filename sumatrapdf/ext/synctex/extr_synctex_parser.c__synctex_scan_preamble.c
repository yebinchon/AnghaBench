
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ synctex_status_t ;
typedef TYPE_1__* synctex_scanner_t ;
typedef int synctex_decoder_t ;
struct TYPE_6__ {int pre_y_offset; int pre_x_offset; int pre_unit; int pre_magnification; int output_fmt; int version; } ;


 scalar_t__ SYNCTEX_STATUS_BAD_ARGUMENT ;
 scalar_t__ SYNCTEX_STATUS_NOT_OK ;
 scalar_t__ SYNCTEX_STATUS_OK ;
 int _synctex_decode_int ;
 int _synctex_decode_string ;
 scalar_t__ _synctex_next_line (TYPE_1__*) ;
 scalar_t__ _synctex_scan_input (TYPE_1__*) ;
 scalar_t__ _synctex_scan_named (TYPE_1__*,char*,int *,int ) ;

synctex_status_t _synctex_scan_preamble(synctex_scanner_t scanner) {
 synctex_status_t status = 0;
 if (((void*)0) == scanner) {
  return SYNCTEX_STATUS_BAD_ARGUMENT;
 }
 status = _synctex_scan_named(scanner,"SyncTeX Version:",&(scanner->version),(synctex_decoder_t)&_synctex_decode_int);
 if (status<SYNCTEX_STATUS_OK) {
  return status;
 }
 status = _synctex_next_line(scanner);
 if (status<SYNCTEX_STATUS_OK) {
  return status;
 }

 do {
  status = _synctex_scan_input(scanner);
  if (status<SYNCTEX_STATUS_NOT_OK) {
   return status;
  }
 } while(status == SYNCTEX_STATUS_OK);


 status = _synctex_scan_named(scanner,"Output:",&(scanner->output_fmt),(synctex_decoder_t)&_synctex_decode_string);
 if (status<SYNCTEX_STATUS_NOT_OK) {
  return status;
 }
 status = _synctex_next_line(scanner);
 if (status<SYNCTEX_STATUS_OK) {
  return status;
 }
 status = _synctex_scan_named(scanner,"Magnification:",&(scanner->pre_magnification),(synctex_decoder_t)&_synctex_decode_int);
 if (status<SYNCTEX_STATUS_OK) {
  return status;
 }
 status = _synctex_next_line(scanner);
 if (status<SYNCTEX_STATUS_OK) {
  return status;
 }
 status = _synctex_scan_named(scanner,"Unit:",&(scanner->pre_unit),(synctex_decoder_t)&_synctex_decode_int);
 if (status<SYNCTEX_STATUS_OK) {
  return status;
 }
 status = _synctex_next_line(scanner);
 if (status<SYNCTEX_STATUS_OK) {
  return status;
 }
 status = _synctex_scan_named(scanner,"X Offset:",&(scanner->pre_x_offset),(synctex_decoder_t)&_synctex_decode_int);
 if (status<SYNCTEX_STATUS_OK) {
  return status;
 }
 status = _synctex_next_line(scanner);
 if (status<SYNCTEX_STATUS_OK) {
  return status;
 }
 status = _synctex_scan_named(scanner,"Y Offset:",&(scanner->pre_y_offset),(synctex_decoder_t)&_synctex_decode_int);
 if (status<SYNCTEX_STATUS_OK) {
  return status;
 }
 return _synctex_next_line(scanner);
}
