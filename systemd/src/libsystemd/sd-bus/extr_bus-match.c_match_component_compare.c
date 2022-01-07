
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bus_match_component {int type; } ;


 int CMP (int ,int ) ;

__attribute__((used)) static int match_component_compare(const struct bus_match_component *a, const struct bus_match_component *b) {
        return CMP(a->type, b->type);
}
