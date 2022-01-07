
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_object ;


 char* json_object_get_string (int *) ;
 int json_object_object_get_ex (int *,char*,int **) ;
 int printf (char*,char*) ;

__attribute__((used)) static void pretty_print_version(json_object *v) {
 json_object *ver;
 json_object_object_get_ex(v, "human_readable", &ver);
 printf("sway version %s\n", json_object_get_string(ver));
}
