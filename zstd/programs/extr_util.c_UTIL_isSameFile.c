
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ st_dev; scalar_t__ st_ino; } ;
typedef TYPE_1__ stat_t ;


 scalar_t__ UTIL_getFileStat (char const*,TYPE_1__*) ;
 int assert (int ) ;
 int strcmp (char const*,char const*) ;

int UTIL_isSameFile(const char* fName1, const char* fName2)
{
    assert(fName1 != ((void*)0)); assert(fName2 != ((void*)0));







    { stat_t file1Stat;
        stat_t file2Stat;
        return UTIL_getFileStat(fName1, &file1Stat)
            && UTIL_getFileStat(fName2, &file2Stat)
            && (file1Stat.st_dev == file2Stat.st_dev)
            && (file1Stat.st_ino == file2Stat.st_ino);
    }

}
