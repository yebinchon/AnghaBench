
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_7__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int stream_t ;
struct TYPE_9__ {int * b; } ;
struct TYPE_8__ {int i_size; TYPE_7__ i_uuid; } ;
typedef TYPE_1__ MP4_Box_t ;


 int CmpUUID (TYPE_7__*,int *) ;
 int MP4_ReadBox_Binary (int *,TYPE_1__*) ;
 int MP4_ReadBox_XML360 (int *,TYPE_1__*) ;
 int MP4_ReadBox_tfrf (int *,TYPE_1__*) ;
 int MP4_ReadBox_tfxd (int *,TYPE_1__*) ;
 int PS3DDSBoxUUID ;
 int TfrfBoxUUID ;
 int TfxdBoxUUID ;
 int XML360BoxUUID ;
 int msg_Warn (int *,char*,...) ;

__attribute__((used)) static int MP4_ReadBox_uuid( stream_t *p_stream, MP4_Box_t *p_box )
{
    if( !CmpUUID( &p_box->i_uuid, &TfrfBoxUUID ) )
        return MP4_ReadBox_tfrf( p_stream, p_box );
    if( !CmpUUID( &p_box->i_uuid, &TfxdBoxUUID ) )
        return MP4_ReadBox_tfxd( p_stream, p_box );
    if( !CmpUUID( &p_box->i_uuid, &XML360BoxUUID ) )
        return MP4_ReadBox_XML360( p_stream, p_box );
    if( !CmpUUID( &p_box->i_uuid, &PS3DDSBoxUUID ) && p_box->i_size == 28 )
        return MP4_ReadBox_Binary( p_stream, p_box );
    msg_Warn( p_stream, "Unknown uuid type box" );

    return 1;
}
