
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ansi_normal () ;
 int printf (char*,char const*,char const*,int ) ;

__attribute__((used)) static void test_one_color(const char *name, const char *color) {
        printf("<%s%s%s>\n", color, name, ansi_normal());
}
