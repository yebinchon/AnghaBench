
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcre_extra ;
typedef int pcre ;


 int die (char*,int,char const*) ;
 int log_debug (char*,char const*) ;
 int * pcre_compile (char*,int const,char const**,int*,int *) ;
 int * pcre_study (int *,int const,char const**) ;

void compile_study(pcre **re, pcre_extra **re_extra, char *q, const int pcre_opts, const int study_opts) {
    const char *pcre_err = ((void*)0);
    int pcre_err_offset = 0;

    *re = pcre_compile(q, pcre_opts, &pcre_err, &pcre_err_offset, ((void*)0));
    if (*re == ((void*)0)) {
        die("Bad regex! pcre_compile() failed at position %i: %s\nIf you meant to search for a literal string, run ag with -Q",
            pcre_err_offset,
            pcre_err);
    }
    *re_extra = pcre_study(*re, study_opts, &pcre_err);
    if (*re_extra == ((void*)0)) {
        log_debug("pcre_study returned nothing useful. Error: %s", pcre_err);
    }
}
