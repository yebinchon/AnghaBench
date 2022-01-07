
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * strvalues; } ;
typedef TYPE_1__ xmlreader ;
typedef size_t XmlReaderStringValue ;


 int reader_free_strvalued (TYPE_1__*,int *) ;

__attribute__((used)) static void reader_free_strvalue(xmlreader *reader, XmlReaderStringValue type)
{
    reader_free_strvalued(reader, &reader->strvalues[type]);
}
