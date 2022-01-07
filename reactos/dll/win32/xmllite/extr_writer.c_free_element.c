
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlwriter ;
struct element {struct element* qname; } ;


 int writer_free (int *,struct element*) ;

__attribute__((used)) static void free_element(xmlwriter *writer, struct element *element)
{
    writer_free(writer, element->qname);
    writer_free(writer, element);
}
