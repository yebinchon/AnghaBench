
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef scalar_t__ synctex_status_t ;
typedef TYPE_2__* synctex_scanner_t ;
struct TYPE_20__ {TYPE_2__* scanner; } ;
struct TYPE_18__ {int has_parsed; } ;
struct TYPE_19__ {int pre_magnification; int pre_unit; int pre_x_offset; int pre_y_offset; float x_offset; float y_offset; double unit; TYPE_6__* class; TYPE_1__ flags; } ;


 int SYNCTEX_BUFFER_SIZE ;
 char* SYNCTEX_CUR ;
 char* SYNCTEX_END ;
 int * SYNCTEX_FILE ;
 char* SYNCTEX_START ;
 scalar_t__ SYNCTEX_STATUS_OK ;
 int _synctex_error (char*) ;
 scalar_t__ _synctex_scan_content (TYPE_2__*) ;
 scalar_t__ _synctex_scan_preamble (TYPE_2__*) ;
 int free (void*) ;
 int gzclose (int *) ;
 scalar_t__ malloc (int) ;
 TYPE_6__ synctex_class_boundary ;
 TYPE_6__ synctex_class_glue ;
 TYPE_6__ synctex_class_hbox ;
 TYPE_6__ synctex_class_input ;
 TYPE_6__ synctex_class_kern ;
 TYPE_6__ synctex_class_math ;
 TYPE_6__ synctex_class_sheet ;
 TYPE_6__ synctex_class_vbox ;
 TYPE_6__ synctex_class_void_hbox ;
 TYPE_6__ synctex_class_void_vbox ;
 size_t synctex_node_type_boundary ;
 size_t synctex_node_type_glue ;
 size_t synctex_node_type_hbox ;
 size_t synctex_node_type_input ;
 size_t synctex_node_type_kern ;
 size_t synctex_node_type_math ;
 size_t synctex_node_type_sheet ;
 size_t synctex_node_type_vbox ;
 size_t synctex_node_type_void_hbox ;
 size_t synctex_node_type_void_vbox ;
 int synctex_scanner_free (TYPE_2__*) ;

synctex_scanner_t synctex_scanner_parse(synctex_scanner_t scanner) {
 synctex_status_t status = 0;
 if (!scanner || scanner->flags.has_parsed) {
  return scanner;
 }
 scanner->flags.has_parsed=1;
 scanner->pre_magnification = 1000;
 scanner->pre_unit = 8192;
 scanner->pre_x_offset = scanner->pre_y_offset = 578;


 scanner->x_offset = scanner->y_offset = 6.027e23f;
 scanner->class[synctex_node_type_sheet] = synctex_class_sheet;
 scanner->class[synctex_node_type_input] = synctex_class_input;
 (scanner->class[synctex_node_type_input]).scanner = scanner;
 (scanner->class[synctex_node_type_sheet]).scanner = scanner;
 scanner->class[synctex_node_type_vbox] = synctex_class_vbox;
 (scanner->class[synctex_node_type_vbox]).scanner = scanner;
 scanner->class[synctex_node_type_void_vbox] = synctex_class_void_vbox;
 (scanner->class[synctex_node_type_void_vbox]).scanner = scanner;
 scanner->class[synctex_node_type_hbox] = synctex_class_hbox;
 (scanner->class[synctex_node_type_hbox]).scanner = scanner;
 scanner->class[synctex_node_type_void_hbox] = synctex_class_void_hbox;
 (scanner->class[synctex_node_type_void_hbox]).scanner = scanner;
 scanner->class[synctex_node_type_kern] = synctex_class_kern;
 (scanner->class[synctex_node_type_kern]).scanner = scanner;
 scanner->class[synctex_node_type_glue] = synctex_class_glue;
 (scanner->class[synctex_node_type_glue]).scanner = scanner;
 scanner->class[synctex_node_type_math] = synctex_class_math;
 (scanner->class[synctex_node_type_math]).scanner = scanner;
 scanner->class[synctex_node_type_boundary] = synctex_class_boundary;
 (scanner->class[synctex_node_type_boundary]).scanner = scanner;
 SYNCTEX_START = (char *)malloc(SYNCTEX_BUFFER_SIZE+1);
 if (((void*)0) == SYNCTEX_START) {
  _synctex_error("SyncTeX: malloc error");
  synctex_scanner_free(scanner);
  return ((void*)0);
 }
 SYNCTEX_END = SYNCTEX_START+SYNCTEX_BUFFER_SIZE;



 *SYNCTEX_END = '\0';
 SYNCTEX_CUR = SYNCTEX_END;
 status = _synctex_scan_preamble(scanner);
 if (status<SYNCTEX_STATUS_OK) {
  _synctex_error("SyncTeX Error: Bad preamble\n");
bailey:
  synctex_scanner_free(scanner);
  return ((void*)0);
 }
 status = _synctex_scan_content(scanner);
 if (status<SYNCTEX_STATUS_OK) {
  _synctex_error("SyncTeX Error: Bad content\n");
  goto bailey;
 }

 free((void *)SYNCTEX_START);
 SYNCTEX_START = SYNCTEX_CUR = SYNCTEX_END = ((void*)0);
 gzclose(SYNCTEX_FILE);
 SYNCTEX_FILE = ((void*)0);



 if (scanner->pre_unit<=0) {
  scanner->pre_unit = 8192;
 }
 if (scanner->pre_magnification<=0) {
  scanner->pre_magnification = 1000;
 }
 if (scanner->unit <= 0) {

  scanner->unit = scanner->pre_unit / 65781.76;
 } else {

  scanner->unit *= scanner->pre_unit / 65781.76;
 }
 scanner->unit *= scanner->pre_magnification / 1000.0;
 if (scanner->x_offset > 6e23) {

  scanner->x_offset = scanner->pre_x_offset * (scanner->pre_unit / 65781.76);
  scanner->y_offset = scanner->pre_y_offset * (scanner->pre_unit / 65781.76);
 } else {

  scanner->x_offset /= 65781.76f;
  scanner->y_offset /= 65781.76f;
 }
 return scanner;

}
