
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sort_gp_asc (void const*,void const*) ;

__attribute__((used)) static int sort_gp_desc(const void *a, const void *b) {
    return -sort_gp_asc(a, b);
}
