
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Data4; int Data3; int Data2; int Data1; } ;
typedef TYPE_1__ vlc_guid_t ;
typedef int bo_t ;


 int bo_add_u8 (int *,int ) ;
 int bo_addle_u16 (int *,int ) ;
 int bo_addle_u32 (int *,int ) ;

__attribute__((used)) static void bo_add_guid( bo_t *p_bo, const vlc_guid_t *id )
{
    bo_addle_u32( p_bo, id->Data1 );
    bo_addle_u16( p_bo, id->Data2 );
    bo_addle_u16( p_bo, id->Data3 );
    for( int i = 0; i < 8; i++ )
    {
        bo_add_u8( p_bo, id->Data4[i] );
    }
}
