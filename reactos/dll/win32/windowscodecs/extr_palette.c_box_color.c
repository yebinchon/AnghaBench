
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct histogram {int dummy; } ;
struct box {int b_max; int b_min; int g_max; int g_min; int r_max; int r_min; } ;


 unsigned int histogram_color (struct histogram*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline unsigned int box_color(struct histogram *h, struct box *b)
{
    return histogram_color(h, b->r_min, b->r_max, b->g_min, b->g_max, b->b_min, b->b_max);
}
