
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cancelled ;

__attribute__((used)) static void sigterm_sigint(int sig) {
        cancelled = 1;
}
