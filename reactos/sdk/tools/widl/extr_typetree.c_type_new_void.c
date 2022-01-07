
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type_t ;


 int TYPE_VOID ;
 int * make_type (int ) ;

type_t *type_new_void(void)
{
    static type_t *void_type = ((void*)0);
    if (!void_type)
        void_type = make_type(TYPE_VOID);
    return void_type;
}
