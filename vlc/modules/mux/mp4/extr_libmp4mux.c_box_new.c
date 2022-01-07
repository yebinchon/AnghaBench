
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bo_t ;


 int bo_add_32be (int *,int ) ;
 int bo_add_fourcc (int *,char const*) ;
 int bo_free (int *) ;
 int bo_init (int *,int) ;
 int * malloc (int) ;

bo_t *box_new(const char *fcc)
{
    bo_t *box = malloc(sizeof(*box));
    if (!box)
        return ((void*)0);

    if(!bo_init(box, 1024))
    {
        bo_free(box);
        return ((void*)0);
    }

    bo_add_32be (box, 0);
    bo_add_fourcc(box, fcc);

    return box;
}
