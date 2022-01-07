
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonVariant ;


 int json_parse_internal (char const**,int *,int **,unsigned int*,unsigned int*,int) ;

int json_parse(const char *input, JsonVariant **ret, unsigned *ret_line, unsigned *ret_column) {
        return json_parse_internal(&input, ((void*)0), ret, ret_line, ret_column, 0);
}
