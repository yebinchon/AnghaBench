
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key_file; int key; int key_len; } ;
typedef TYPE_1__ SecurityAssociation ;


 int explicit_bzero_safe (int ,int ) ;
 int free (int ) ;

__attribute__((used)) static void security_association_clear(SecurityAssociation *sa) {
        if (!sa)
                return;

        explicit_bzero_safe(sa->key, sa->key_len);
        free(sa->key);
        free(sa->key_file);
}
