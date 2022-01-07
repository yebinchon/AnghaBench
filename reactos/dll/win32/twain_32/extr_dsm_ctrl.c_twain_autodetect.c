
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TRUE ;
 scalar_t__ detectionrun ;
 int twain_add_onedriver (char*) ;

__attribute__((used)) static void
twain_autodetect(void) {
 if (detectionrun) return;
        detectionrun = TRUE;

 twain_add_onedriver("sane.ds");
 twain_add_onedriver("gphoto2.ds");





}
