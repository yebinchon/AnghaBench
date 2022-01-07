
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Set ;


 int member_free ;
 int set_free_with_destructor (int *,int ) ;

__attribute__((used)) static void member_set_free(Set *s) {
        set_free_with_destructor(s, member_free);
}
