
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 int * get_user_type (int const*,int *) ;

__attribute__((used)) static int is_user_type(const type_t *t)
{
    return get_user_type(t, ((void*)0)) != ((void*)0);
}
