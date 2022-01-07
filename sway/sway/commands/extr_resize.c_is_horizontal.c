
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int WLR_EDGE_LEFT ;
 int WLR_EDGE_RIGHT ;

__attribute__((used)) static bool is_horizontal(uint32_t axis) {
 return axis & (WLR_EDGE_LEFT | WLR_EDGE_RIGHT);
}
