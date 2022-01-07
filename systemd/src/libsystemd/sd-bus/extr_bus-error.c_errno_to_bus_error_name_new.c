
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 char* errno_to_name (int) ;
 char* strjoin (char*,char const*) ;

__attribute__((used)) static int errno_to_bus_error_name_new(int error, char **ret) {
        const char *name;
        char *n;

        if (error < 0)
                error = -error;

        name = errno_to_name(error);
        if (!name)
                return 0;

        n = strjoin("System.Error.", name);
        if (!n)
                return -ENOMEM;

        *ret = n;
        return 1;
}
