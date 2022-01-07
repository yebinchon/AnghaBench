
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BootId ;


 int LIST_REMOVE (int ,int *,int *) ;
 int boot_list ;
 int free (int *) ;

__attribute__((used)) static void boot_id_free_all(BootId *l) {

        while (l) {
                BootId *i = l;
                LIST_REMOVE(boot_list, l, i);
                free(i);
        }
}
