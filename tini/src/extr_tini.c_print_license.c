
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int LICENSE ;
 scalar_t__ LICENSE_len ;
 scalar_t__ fwrite (int ,int,scalar_t__,int * const) ;

void print_license(FILE* const file) {
    if(LICENSE_len > fwrite(LICENSE, sizeof(char), LICENSE_len, file)) {





    }
}
