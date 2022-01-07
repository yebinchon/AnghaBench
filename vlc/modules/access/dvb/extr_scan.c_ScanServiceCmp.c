
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ i_channel; scalar_t__ psz_name; } ;
typedef TYPE_1__ scan_service_t ;


 int strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static int ScanServiceCmp( const void *a, const void *b )
{
    const scan_service_t *sa = *((const scan_service_t**)a);
    const scan_service_t *sb = *((const scan_service_t**)b);

    if( sa->i_channel == sb->i_channel )
    {
        if( sa->psz_name && sb->psz_name )
            return strcmp( sa->psz_name, sb->psz_name );
        return 0;
    }

    if( sa->i_channel < sb->i_channel )
        return -1;
    else if( sa->i_channel > sb->i_channel )
        return 1;
    return 0;
}
