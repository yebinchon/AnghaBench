
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__* gilog ;
 int* glog ;

uint8_t gdiv(uint8_t a, uint8_t b) {
    if (b == 0) {
        return 0xff;
    } else if (a == 0) {
        return 0;
    } else {
        if (gilog[a] >= gilog[b])
            return glog[(gilog[a] - gilog[b]) % 255];
        else
            return glog[255-((gilog[b] - gilog[a]) % 255)];
    }
}
