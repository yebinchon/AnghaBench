
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unit_times {int activating; } ;


 int CMP (int ,int ) ;

__attribute__((used)) static int compare_unit_start(const struct unit_times *a, const struct unit_times *b) {
        return CMP(a->activating, b->activating);
}
