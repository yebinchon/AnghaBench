
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;


 int* gilog ;
 size_t* glog ;

uint8_t gmul(uint8_t a, uint8_t b) {
    if (a == 0 || b == 0)
        return 0;
    else
        return glog[(gilog[a] + gilog[b]) % 255];
}
