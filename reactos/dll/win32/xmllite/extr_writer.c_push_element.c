
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int elements; } ;
typedef TYPE_1__ xmlwriter ;
struct element {int entry; } ;


 int list_add_head (int *,int *) ;

__attribute__((used)) static void push_element(xmlwriter *writer, struct element *element)
{
    list_add_head(&writer->elements, &element->entry);
}
