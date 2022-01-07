
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int langs ;
typedef int lang_spec_t ;



size_t get_lang_count() {
    return sizeof(langs) / sizeof(lang_spec_t);
}
