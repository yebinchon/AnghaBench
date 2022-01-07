
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

void synctex_updater_append_magnification(synctex_updater_t updater, char * magnification){
 if (((void*)0)==updater) {
  return;
 }
 if (magnification && strlen(magnification)) {
  updater->length += SYNCTEX_fprintf(SYNCTEX_FILE,"Magnification:%s\n",magnification);
 }
}
