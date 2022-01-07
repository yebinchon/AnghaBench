
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int space_map_t ;
typedef int range_tree_t ;
typedef int maptype_t ;


 int space_map_length (int *) ;
 int space_map_load_length (int *,int *,int ,int ) ;

int
space_map_load(space_map_t *sm, range_tree_t *rt, maptype_t maptype)
{
 return (space_map_load_length(sm, rt, maptype, space_map_length(sm)));
}
