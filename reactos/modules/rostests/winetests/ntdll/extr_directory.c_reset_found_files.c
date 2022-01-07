
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ nfound; } ;


 int test_dir_count ;
 TYPE_1__* testfiles ;

__attribute__((used)) static void reset_found_files(void)
{
    int i;

    for (i = 0; i < test_dir_count; i++)
        testfiles[i].nfound = 0;
}
