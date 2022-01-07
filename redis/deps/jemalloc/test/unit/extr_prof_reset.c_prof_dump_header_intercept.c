
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tsdn_t ;
typedef int prof_cnt_t ;


 int cnt_all_copy ;
 int memcpy (int *,int const*,int) ;
 int prof_dump_header_intercepted ;

__attribute__((used)) static bool
prof_dump_header_intercept(tsdn_t *tsdn, bool propagate_err,
    const prof_cnt_t *cnt_all) {
 prof_dump_header_intercepted = 1;
 memcpy(&cnt_all_copy, cnt_all, sizeof(prof_cnt_t));

 return 0;
}
