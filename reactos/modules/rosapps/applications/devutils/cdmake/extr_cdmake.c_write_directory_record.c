
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ offset; } ;
struct TYPE_5__ {int year; char month; char day; char hour; char minute; char second; } ;
struct TYPE_6__ {char* joliet_name; char* name_on_cd; char* extension_on_cd; char flags; TYPE_1__ date_and_time; int size; int sector; int joliet_size; int joliet_sector; } ;
typedef TYPE_2__* PDIR_RECORD ;
typedef int DIR_RECORD_TYPE ;
typedef char BYTE ;
typedef scalar_t__ BOOL ;





 scalar_t__ SECTOR_SIZE ;

 TYPE_4__ cd ;
 int fill_sector () ;
 int strlen (char*) ;
 int write_both_endian_dword (int ) ;
 int write_both_endian_word (int) ;
 int write_byte (char) ;
 int write_string (char*) ;
 int write_string_as_big_endian_unicode (char*) ;

__attribute__((used)) static void
write_directory_record(PDIR_RECORD d,
                       DIR_RECORD_TYPE DirType,
                       BOOL joliet)
{
    unsigned identifier_size;
    unsigned record_size;

    if (joliet)
    {
        if (DirType == 130 || DirType == 131)
            identifier_size = 1;
        else
            identifier_size = strlen(d->joliet_name) * 2;
    }
    else
    {
        switch (DirType)
        {
            case 130:
            case 131:
                identifier_size = 1;
                break;
            case 128:

                identifier_size = strlen(d->name_on_cd);
                break;
            case 129:

                identifier_size = strlen(d->name_on_cd) + 2;
                if (d->extension_on_cd[0] != 0)
                    identifier_size += 1 + strlen(d->extension_on_cd);
                break;
            default:
                identifier_size = 1;
                break;
        }
    }
    record_size = 33 + identifier_size;
    if ((identifier_size & 1) == 0)
        record_size++;
    if (cd.offset + record_size > SECTOR_SIZE)
        fill_sector();
    write_byte((BYTE)record_size);
    write_byte(0);
    if (joliet)
    {
        write_both_endian_dword(d->joliet_sector);
        write_both_endian_dword(d->joliet_size);
    }
    else
    {
        write_both_endian_dword(d->sector);
        write_both_endian_dword(d->size);
    }
    write_byte((BYTE)(d->date_and_time.year - 1900));
    write_byte(d->date_and_time.month);
    write_byte(d->date_and_time.day);
    write_byte(d->date_and_time.hour);
    write_byte(d->date_and_time.minute);
    write_byte(d->date_and_time.second);
    write_byte(0);
    write_byte(d->flags);
    write_byte(0);
    write_byte(0);
    write_both_endian_word(1);
    write_byte((BYTE)identifier_size);
    switch (DirType)
    {
        case 130:
            write_byte(0);
            break;
        case 131:
            write_byte(1);
            break;
        case 128:
            if (joliet)
                write_string_as_big_endian_unicode(d->joliet_name);
            else
                write_string(d->name_on_cd);
            break;
        case 129:
            if (joliet)
            {
                write_string_as_big_endian_unicode(d->joliet_name);
            }
            else
            {
                write_string(d->name_on_cd);
                if (d->extension_on_cd[0] != 0)
                {
                    write_byte('.');
                    write_string(d->extension_on_cd);
                }
                write_string(";1");
            }
            break;
    }
    if ((identifier_size & 1) == 0)
        write_byte(0);
}
