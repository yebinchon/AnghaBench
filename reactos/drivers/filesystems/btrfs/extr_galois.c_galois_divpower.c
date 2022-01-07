
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef scalar_t__ uint32_t ;


 size_t* gilog ;
 size_t* glog ;

void galois_divpower(uint8_t* data, uint8_t div, uint32_t len) {
    while (len > 0) {
        if (data[0] != 0) {
            if (gilog[data[0]] <= div)
                data[0] = glog[(gilog[data[0]] + (255 - div)) % 255];
            else
                data[0] = glog[(gilog[data[0]] - div) % 255];
        }

        data++;
        len--;
    }
}
