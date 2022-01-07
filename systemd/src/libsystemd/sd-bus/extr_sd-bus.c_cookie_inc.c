
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 scalar_t__ COOKIE_CYCLED ;
 scalar_t__ UINT32_MAX ;

__attribute__((used)) static uint64_t cookie_inc(uint64_t cookie) {


        if (cookie >= UINT32_MAX)
                return COOKIE_CYCLED;


        return cookie + 1;
}
