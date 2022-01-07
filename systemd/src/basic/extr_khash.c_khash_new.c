
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int khash ;


 int khash_new_with_key (int **,char const*,int *,int ) ;

int khash_new(khash **ret, const char *algorithm) {
        return khash_new_with_key(ret, algorithm, ((void*)0), 0);
}
