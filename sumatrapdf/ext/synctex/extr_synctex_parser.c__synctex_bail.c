
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _synctex_error (char*) ;

int _synctex_bail(void) {
  _synctex_error("SyncTeX ERROR\n");
  return -1;
}
