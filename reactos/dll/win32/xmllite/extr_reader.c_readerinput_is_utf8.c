
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* buffer; } ;
typedef TYPE_2__ xmlreaderinput ;
typedef int startA ;
struct TYPE_7__ {int* data; } ;
typedef TYPE_3__ encoded_buffer ;
typedef int commentA ;
struct TYPE_5__ {TYPE_3__ encoded; } ;
typedef int BOOL ;


 int memcmp (int*,char const*,int) ;

__attribute__((used)) static inline BOOL readerinput_is_utf8(xmlreaderinput *readerinput)
{
    static const char startA[] = {'<','?'};
    static const char commentA[] = {'<','!'};
    encoded_buffer *buffer = &readerinput->buffer->encoded;
    unsigned char *ptr = (unsigned char*)buffer->data;

    return !memcmp(buffer->data, startA, sizeof(startA)) ||
           !memcmp(buffer->data, commentA, sizeof(commentA)) ||

           (ptr[0] == '<' &&
            (
             (ptr[1] && (ptr[1] <= 0x7f)) ||
             (buffer->data[1] >> 5) == 0x6 ||
             (buffer->data[1] >> 4) == 0xe ||
             (buffer->data[1] >> 3) == 0x1e)
           );
}
