
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int file; } ;
typedef TYPE_1__ file_crit ;
typedef int FILE ;


 int ENOMEM ;
 int ERR (char*) ;
 int MSVCRT_FD_BLOCK_SIZE ;
 TYPE_1__** MSVCRT_fstream ;
 int MSVCRT_max_streams ;
 int _IOB_ENTRIES ;
 int * _errno () ;
 int * _iob ;
 TYPE_1__* calloc (int,int) ;

__attribute__((used)) static inline FILE* msvcrt_get_file(int i)
{
    file_crit *ret;

    if(i >= MSVCRT_max_streams)
        return ((void*)0);

    if(i < _IOB_ENTRIES)
        return &_iob[i];

    ret = MSVCRT_fstream[i/MSVCRT_FD_BLOCK_SIZE];
    if(!ret) {
        MSVCRT_fstream[i/MSVCRT_FD_BLOCK_SIZE] = calloc(MSVCRT_FD_BLOCK_SIZE, sizeof(file_crit));
        if(!MSVCRT_fstream[i/MSVCRT_FD_BLOCK_SIZE]) {
            ERR("out of memory\n");
            *_errno() = ENOMEM;
            return ((void*)0);
        }

        ret = MSVCRT_fstream[i/MSVCRT_FD_BLOCK_SIZE] + (i%MSVCRT_FD_BLOCK_SIZE);
    } else
        ret += i%MSVCRT_FD_BLOCK_SIZE;

    return &ret->file;
}
