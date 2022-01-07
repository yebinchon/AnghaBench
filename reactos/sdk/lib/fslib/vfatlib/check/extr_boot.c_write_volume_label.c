
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int time_t ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mon; int tm_year; scalar_t__ tm_mday; } ;
typedef scalar_t__ off_t ;
struct TYPE_5__ {scalar_t__ size; scalar_t__ start; scalar_t__ starthi; void* date; void* adate; void* cdate; void* time; void* ctime; scalar_t__ ctime_ms; int attr; int name; } ;
typedef int DOS_FS ;
typedef TYPE_1__ DIR_ENT ;


 int ATTR_VOLUME ;
 scalar_t__ alloc_rootdir_entry (int *,TYPE_1__*,char*,int ) ;
 scalar_t__ find_volume_de (int *,TYPE_1__*) ;
 int fs_write (scalar_t__,int,TYPE_1__*) ;
 void* htole16 (unsigned short) ;
 struct tm* localtime (int *) ;
 int memcpy (int ,char*,int) ;
 int time (int *) ;

__attribute__((used)) static void write_volume_label(DOS_FS * fs, char *label)
{
    time_t now = time(((void*)0));
    struct tm *mtime = localtime(&now);
    off_t offset;
    int created;
    DIR_ENT de;

    created = 0;
    offset = find_volume_de(fs, &de);
    if (offset == 0) {
 created = 1;
 offset = alloc_rootdir_entry(fs, &de, label, 0);
    }
    memcpy(de.name, label, 11);
    de.time = htole16((unsigned short)((mtime->tm_sec >> 1) +
           (mtime->tm_min << 5) +
           (mtime->tm_hour << 11)));
    de.date = htole16((unsigned short)(mtime->tm_mday +
           ((mtime->tm_mon + 1) << 5) +
           ((mtime->tm_year - 80) << 9)));
    if (created) {
 de.attr = ATTR_VOLUME;
 de.ctime_ms = 0;
 de.ctime = de.time;
 de.cdate = de.date;
 de.adate = de.date;
 de.starthi = 0;
 de.start = 0;
 de.size = 0;
    }

    fs_write(offset, sizeof(DIR_ENT), &de);
}
