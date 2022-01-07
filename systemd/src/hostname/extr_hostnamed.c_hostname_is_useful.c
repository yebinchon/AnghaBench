
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int is_localhost (char const*) ;
 int isempty (char const*) ;

__attribute__((used)) static bool hostname_is_useful(const char *hn) {
        return !isempty(hn) && !is_localhost(hn);
}
