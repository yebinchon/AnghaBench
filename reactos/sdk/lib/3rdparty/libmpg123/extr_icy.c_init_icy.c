
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icy_meta {int * data; } ;



void init_icy(struct icy_meta *icy)
{
 icy->data = ((void*)0);
}
