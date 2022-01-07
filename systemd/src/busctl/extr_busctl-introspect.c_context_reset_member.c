
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int member_writable; scalar_t__ member_flags; int * member_result; int * member_signature; int * member_name; } ;
typedef TYPE_1__ Context ;


 int free (int *) ;

__attribute__((used)) static void context_reset_member(Context *c) {
        free(c->member_name);
        free(c->member_signature);
        free(c->member_result);

        c->member_name = c->member_signature = c->member_result = ((void*)0);
        c->member_flags = 0;
        c->member_writable = 0;
}
