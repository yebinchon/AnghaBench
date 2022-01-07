
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * description; } ;
typedef TYPE_1__ Varlink ;


 char const* strna (int *) ;

__attribute__((used)) static inline const char *varlink_description(Varlink *v) {
        return strna(v ? v->description : ((void*)0));
}
