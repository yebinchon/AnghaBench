
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef int DOS_FS ;
typedef TYPE_1__ DOS_FILE ;


 scalar_t__ check_file (int *,TYPE_1__*) ;

__attribute__((used)) static int check_files(DOS_FS * fs, DOS_FILE * start)
{
    while (start) {
 if (check_file(fs, start))
     return 1;
 start = start->next;
    }
    return 0;
}
