
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mstime_t ;


 int ustime () ;

mstime_t mstime(void) {
    return ustime()/1000;
}
