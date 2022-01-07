
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strreplace (char const*,char*,char*) ;

__attribute__((used)) static inline char* specifier_escape(const char *string) {
        return strreplace(string, "%", "%%");
}
