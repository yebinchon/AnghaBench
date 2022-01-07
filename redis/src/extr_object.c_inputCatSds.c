
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sds ;


 int sdscat (int ,char const*) ;

void inputCatSds(void *result, const char *str) {

    sds *info = (sds *)result;
    *info = sdscat(*info, str);
}
