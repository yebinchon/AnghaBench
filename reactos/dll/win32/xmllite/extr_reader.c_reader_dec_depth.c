
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ depth; } ;
typedef TYPE_1__ xmlreader ;



__attribute__((used)) static void reader_dec_depth(xmlreader *reader)
{
    if (reader->depth)
        reader->depth--;
}
