
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDOUT_FILENO ;
 int USHRT_MAX ;
 int cached_columns ;
 int fd_columns (int ) ;
 char* getenv (char*) ;
 int safe_atoi (char const*,int*) ;

unsigned columns(void) {
        const char *e;
        int c;

        if (cached_columns > 0)
                return cached_columns;

        c = 0;
        e = getenv("COLUMNS");
        if (e)
                (void) safe_atoi(e, &c);

        if (c <= 0 || c > USHRT_MAX) {
                c = fd_columns(STDOUT_FILENO);
                if (c <= 0)
                        c = 80;
        }

        cached_columns = c;
        return cached_columns;
}
