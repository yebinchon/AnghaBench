
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* audit_type_name_alloca (int) ;
 char* audit_type_to_string (int) ;
 int printf (char*,int,char*,char const*) ;

__attribute__((used)) static void print_audit_label(int i) {
        const char *name;

        name = audit_type_name_alloca(i);

        printf("%i → %s → %s\n", i, audit_type_to_string(i), name);
}
