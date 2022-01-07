
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct textstream {scalar_t__ mode; } ;
typedef enum iotype { ____Placeholder_iotype } iotype ;
typedef int BOOL ;


 scalar_t__ ForAppending ;
 scalar_t__ ForReading ;
 scalar_t__ ForWriting ;
 int IORead ;

__attribute__((used)) static BOOL textstream_check_iomode(struct textstream *This, enum iotype type)
{
    if (type == IORead)
        return This->mode == ForWriting || This->mode == ForAppending;
    else
        return This->mode == ForReading;
}
