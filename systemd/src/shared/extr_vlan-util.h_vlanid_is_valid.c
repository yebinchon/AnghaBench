
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;


 scalar_t__ VLANID_MAX ;

__attribute__((used)) static inline bool vlanid_is_valid(uint16_t id) {
        return id <= VLANID_MAX;
}
