
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t LocaleVariable ;


 size_t _VARIABLE_LC_MAX ;
 char* mfree (char*) ;

void locale_variables_free(char *l[_VARIABLE_LC_MAX]) {
        LocaleVariable i;

        if (!l)
                return;

        for (i = 0; i < _VARIABLE_LC_MAX; i++)
                l[i] = mfree(l[i]);
}
