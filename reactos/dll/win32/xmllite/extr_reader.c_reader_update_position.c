
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int line_position; int line_number; } ;
struct TYPE_5__ {TYPE_1__ position; } ;
typedef TYPE_2__ xmlreader ;
typedef char WCHAR ;



__attribute__((used)) static void reader_update_position(xmlreader *reader, WCHAR ch)
{
    if (ch == '\r')
        reader->position.line_position = 1;
    else if (ch == '\n')
    {
        reader->position.line_number++;
        reader->position.line_position = 1;
    }
    else
        reader->position.line_position++;
}
