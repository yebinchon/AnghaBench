
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errcode_t ;
typedef int bb_badblocks_list ;


 int make_u64_list (int,int ,int ,int *) ;

__attribute__((used)) static errcode_t bb_badblocks_list_create(bb_badblocks_list *ret, int size)
{
 return make_u64_list(size, 0, 0, (bb_badblocks_list *) ret);
}
