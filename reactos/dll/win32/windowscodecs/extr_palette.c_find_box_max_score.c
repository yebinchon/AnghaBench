
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct box {scalar_t__ score; } ;



__attribute__((used)) static struct box *find_box_max_score(struct box *b, int count)
{
    struct box *best = ((void*)0);
    for (; count--; b++)
        if (b->score && (!best || b->score > best->score)) best = b;
    return best;
}
