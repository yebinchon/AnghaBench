
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * description; } ;
typedef TYPE_1__ VarlinkServer ;


 char const* strna (int *) ;

__attribute__((used)) static inline const char *varlink_server_description(VarlinkServer *s) {
        return strna(s ? s->description : ((void*)0));
}
