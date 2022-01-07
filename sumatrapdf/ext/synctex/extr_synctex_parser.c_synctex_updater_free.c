
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* synctex_updater_t ;
typedef int gzFile ;
struct TYPE_4__ {scalar_t__ length; } ;
typedef int FILE ;


 scalar_t__ SYNCTEX_FILE ;
 scalar_t__ SYNCTEX_NO_GZ ;
 int SYNCTEX_fprintf (scalar_t__,char*,scalar_t__) ;
 int fclose (int *) ;
 int free (TYPE_1__*) ;
 int gzclose (int ) ;
 int printf (char*) ;

void synctex_updater_free(synctex_updater_t updater){
 if (((void*)0)==updater) {
  return;
 }
 if (updater->length>0) {
  SYNCTEX_fprintf(SYNCTEX_FILE,"!%i\n",updater->length);
 }
 if (SYNCTEX_NO_GZ) {
  fclose((FILE *)SYNCTEX_FILE);
 } else {
  gzclose((gzFile)SYNCTEX_FILE);
 }
 free(updater);
 printf("... done.\n");
 return;
}
