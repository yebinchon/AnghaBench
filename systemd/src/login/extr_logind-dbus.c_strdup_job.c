
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;


 int ENOMEM ;
 int sd_bus_message_read (int *,char*,char const**) ;
 char* strdup (char const*) ;

__attribute__((used)) static int strdup_job(sd_bus_message *reply, char **job) {
        const char *j;
        char *copy;
        int r;

        r = sd_bus_message_read(reply, "o", &j);
        if (r < 0)
                return r;

        copy = strdup(j);
        if (!copy)
                return -ENOMEM;

        *job = copy;
        return 1;
}
