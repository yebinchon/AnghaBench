
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct randomizer {int loop; } ;



void
randomizer_SetLoop(struct randomizer *r, bool loop)
{
    r->loop = loop;
}
