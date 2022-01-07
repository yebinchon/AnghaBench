
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ERANGE ;
 scalar_t__ SIGNAL_VALID (int) ;
 int SIGRTMAX ;
 int SIGRTMIN ;
 int __signal_from_string (char const*) ;
 int safe_atoi (char const*,int*) ;
 char* startswith (char const*,char*) ;

int signal_from_string(const char *s) {
        const char *p;
        int signo, r;


        if (safe_atoi(s, &signo) >= 0) {
                if (SIGNAL_VALID(signo))
                        return signo;
                else
                        return -ERANGE;
        }


        if (startswith(s, "SIG"))
                s += 3;


        signo = __signal_from_string(s);
        if (signo > 0)
                return signo;



        p = startswith(s, "RTMIN");
        if (p) {
                if (*p == '\0')
                        return SIGRTMIN;
                if (*p != '+')
                        return -EINVAL;

                r = safe_atoi(p, &signo);
                if (r < 0)
                        return r;

                if (signo < 0 || signo > SIGRTMAX - SIGRTMIN)
                        return -ERANGE;

                return signo + SIGRTMIN;
        }



        p = startswith(s, "RTMAX");
        if (p) {
                if (*p == '\0')
                        return SIGRTMAX;
                if (*p != '-')
                        return -EINVAL;

                r = safe_atoi(p, &signo);
                if (r < 0)
                        return r;

                if (signo > 0 || signo < SIGRTMIN - SIGRTMAX)
                        return -ERANGE;

                return signo + SIGRTMAX;
        }

        return -EINVAL;
}
