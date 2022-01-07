
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hostname_setup () ;
 int log_error_errno (int,char*) ;

int main(int argc, char* argv[]) {
        int r;

        r = hostname_setup();
        if (r < 0)
                log_error_errno(r, "hostname: %m");

        return 0;
}
