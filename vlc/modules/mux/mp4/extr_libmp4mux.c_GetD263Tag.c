
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bo_t ;


 int bo_add_16be (int *,int) ;
 int bo_add_8 (int *,int ) ;
 int bo_add_fourcc (int *,char*) ;
 int * box_new (char*) ;

__attribute__((used)) static bo_t *GetD263Tag(void)
{
    bo_t *d263 = box_new("d263");
    if(!d263)
        return ((void*)0);

    bo_add_fourcc(d263, "VLC ");
    bo_add_16be(d263, 0xa);
    bo_add_8(d263, 0);

    return d263;
}
