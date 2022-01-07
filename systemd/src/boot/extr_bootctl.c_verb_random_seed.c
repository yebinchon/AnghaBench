
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int acquire_esp (int,int *,int *,int *,int *) ;
 int arg_esp_path ;
 int install_random_seed (int ) ;
 int sync_everything () ;

__attribute__((used)) static int verb_random_seed(int argc, char *argv[], void *userdata) {
        int r;

        r = acquire_esp(0, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        if (r < 0)
                return r;

        r = install_random_seed(arg_esp_path);
        if (r < 0)
                return r;

        (void) sync_everything();
        return 0;
}
