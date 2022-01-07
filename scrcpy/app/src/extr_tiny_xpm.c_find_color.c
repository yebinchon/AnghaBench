
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct index {char c; scalar_t__ color; } ;



__attribute__((used)) static bool
find_color(struct index *index, int len, char c, uint32_t *color) {

    for (int i = 0; i < len; ++i) {
        if (index[i].c == c) {
            *color = index[i].color;
            return 1;
        }
    }
    *color = 0;
    return 0;
}
