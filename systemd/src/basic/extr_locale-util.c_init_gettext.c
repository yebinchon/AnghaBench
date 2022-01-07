
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GETTEXT_PACKAGE ;
 int LC_ALL ;
 int setlocale (int ,char*) ;
 int textdomain (int ) ;

void init_gettext(void) {
        setlocale(LC_ALL, "");
        textdomain(GETTEXT_PACKAGE);
}
