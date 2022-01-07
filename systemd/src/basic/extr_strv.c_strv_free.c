
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** mfree (char**) ;
 int strv_clear (char**) ;

char **strv_free(char **l) {
        strv_clear(l);
        return mfree(l);
}
