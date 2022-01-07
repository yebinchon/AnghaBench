
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int* glog ;

uint8_t gpow2(uint8_t e) {
    return glog[e%255];
}
