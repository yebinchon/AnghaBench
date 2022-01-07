
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus ;


 int resolve_service (int *,char*,char*,char*) ;

__attribute__((used)) static int verb_service(int argc, char **argv, void *userdata) {
        sd_bus *bus = userdata;

        if (argc == 2)
                return resolve_service(bus, ((void*)0), ((void*)0), argv[1]);
        else if (argc == 3)
                return resolve_service(bus, ((void*)0), argv[1], argv[2]);
        else
                return resolve_service(bus, argv[1], argv[2], argv[3]);
}
