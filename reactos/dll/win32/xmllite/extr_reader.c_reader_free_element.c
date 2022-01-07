
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xmlreader ;
struct element {int qname; int localname; int prefix; } ;


 int reader_free (int *,struct element*) ;
 int reader_free_strvalued (int *,int *) ;

__attribute__((used)) static void reader_free_element(xmlreader *reader, struct element *element)
{
    reader_free_strvalued(reader, &element->prefix);
    reader_free_strvalued(reader, &element->localname);
    reader_free_strvalued(reader, &element->qname);
    reader_free(reader, element);
}
