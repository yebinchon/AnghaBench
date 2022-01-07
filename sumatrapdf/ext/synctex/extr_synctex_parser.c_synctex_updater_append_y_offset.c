
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* synctex_updater_t ;
struct TYPE_3__ {int length; } ;


 int SYNCTEX_FILE ;
 scalar_t__ SYNCTEX_fprintf (int ,char*,char*) ;
 scalar_t__ strlen (char*) ;

void synctex_updater_append_y_offset(synctex_updater_t updater, char * y_offset){
 if (((void*)0)==updater) {
  return;
 }
 if (y_offset && strlen(y_offset)) {
  updater->length += SYNCTEX_fprintf(SYNCTEX_FILE,"Y Offset:%s\n",y_offset);
 }
}
