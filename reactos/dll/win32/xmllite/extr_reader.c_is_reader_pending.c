
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* input; } ;
typedef TYPE_2__ xmlreader ;
struct TYPE_4__ {int pending; } ;



__attribute__((used)) static inline int is_reader_pending(xmlreader *reader)
{
    return reader->input->pending;
}
