
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ direction_t ;


 scalar_t__ DIRECTION_DOWN ;

__attribute__((used)) static bool check_properly_ordered(uint64_t new_offset, uint64_t old_offset, direction_t direction) {


        if (old_offset == 0 || new_offset == 0)
                return 0;


        return direction == DIRECTION_DOWN ?
                new_offset > old_offset :
                new_offset < old_offset;
}
