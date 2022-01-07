
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VARIABLE_LANG ;
 int _VARIABLE_LC_MAX ;
 scalar_t__ isempty (char*) ;
 char* mfree (char*) ;
 scalar_t__ streq_ptr (char*,char*) ;

void locale_simplify(char *locale[_VARIABLE_LC_MAX]) {
        int p;

        for (p = VARIABLE_LANG+1; p < _VARIABLE_LC_MAX; p++)
                if (isempty(locale[p]) || streq_ptr(locale[VARIABLE_LANG], locale[p]))
                        locale[p] = mfree(locale[p]);
}
