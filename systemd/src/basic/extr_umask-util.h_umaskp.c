
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int umask (int) ;

__attribute__((used)) static inline void umaskp(mode_t *u) {
        umask(*u & 0777);
}
