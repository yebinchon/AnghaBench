
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;
typedef int FILE ;


 int JSON_FORMAT_COLOR_AUTO ;
 int JSON_FORMAT_NEWLINE ;
 int JSON_FORMAT_PRETTY ;
 scalar_t__ JSON_PRETTY ;
 scalar_t__ arg_json ;
 int json_variant_dump (int *,int,int *,int *) ;

__attribute__((used)) static void json_dump_with_flags(JsonVariant *v, FILE *f) {

        json_variant_dump(v,
                          (arg_json == JSON_PRETTY ? JSON_FORMAT_PRETTY : JSON_FORMAT_NEWLINE) |
                          JSON_FORMAT_COLOR_AUTO,
                          f, ((void*)0));
}
