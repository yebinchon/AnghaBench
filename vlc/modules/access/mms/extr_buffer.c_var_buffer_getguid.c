
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Data4; void* Data3; void* Data2; int Data1; } ;
typedef TYPE_1__ vlc_guid_t ;
typedef int var_buffer_t ;


 void* var_buffer_get16 (int *) ;
 int var_buffer_get32 (int *) ;
 int var_buffer_get8 (int *) ;

void var_buffer_getguid( var_buffer_t *p_buf, vlc_guid_t *p_guid )
{
    p_guid->Data1 = var_buffer_get32( p_buf );
    p_guid->Data2 = var_buffer_get16( p_buf );
    p_guid->Data3 = var_buffer_get16( p_buf );

    for( int i = 0; i < 8; i++ )
        p_guid->Data4[i] = var_buffer_get8( p_buf );
}
