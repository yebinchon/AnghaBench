
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int time_t ;
struct tm {int dummy; } ;
struct TYPE_4__ {int size; int date; int time; } ;
struct TYPE_5__ {TYPE_1__ dir_ent; } ;
typedef TYPE_2__ DOS_FILE ;


 int date_dos2unix (int ,int ) ;
 int le16toh (int ) ;
 int le32toh (int ) ;
 struct tm* localtime (int *) ;
 int sprintf (char*,char*,int,char*) ;
 int strftime (char*,int,char*,struct tm*) ;

__attribute__((used)) static char *file_stat(DOS_FILE * file)
{
    static char temp[100];
    struct tm *tm;
    char tmp[100];
    time_t date;

    date =
 date_dos2unix(le16toh(file->dir_ent.time), le16toh(file->dir_ent.date));
    tm = localtime(&date);
    strftime(tmp, 99, "%H:%M:%S %b %d %Y", tm);
    sprintf(temp, "  Size %u bytes, date %s", le32toh(file->dir_ent.size), tmp);
    return temp;
}
