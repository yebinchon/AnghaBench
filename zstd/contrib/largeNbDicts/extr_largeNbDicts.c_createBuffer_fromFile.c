
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ size; scalar_t__ capacity; int * ptr; } ;
typedef TYPE_1__ buffer_t ;
typedef scalar_t__ U64 ;
typedef int FILE ;


 int CONTROL (int) ;
 scalar_t__ const UTIL_FILESIZE_UNKNOWN ;
 scalar_t__ UTIL_getFileSize (char const*) ;
 int assert (int) ;
 TYPE_1__ createBuffer (size_t const) ;
 int fclose (int * const) ;
 int fillBuffer_fromHandle (TYPE_1__*,int * const) ;
 int * fopen (char const*,char*) ;
 TYPE_1__ kBuffNull ;

__attribute__((used)) static buffer_t createBuffer_fromFile(const char* fileName)
{
    U64 const fileSize = UTIL_getFileSize(fileName);
    size_t const bufferSize = (size_t) fileSize;

    if (fileSize == UTIL_FILESIZE_UNKNOWN) return kBuffNull;
    assert((U64)bufferSize == fileSize);

    { FILE* const f = fopen(fileName, "rb");
        if (f == ((void*)0)) return kBuffNull;

        buffer_t buff = createBuffer(bufferSize);
        CONTROL(buff.ptr != ((void*)0));

        fillBuffer_fromHandle(&buff, f);
        CONTROL(buff.size == buff.capacity);

        fclose(f);
        return buff;
    }
}
