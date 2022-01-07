
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_9__ {struct TYPE_9__* psz_value; } ;
struct TYPE_7__ {TYPE_1__* p_keys; } ;
struct TYPE_8__ {TYPE_2__ data; } ;
struct TYPE_6__ {size_t i_entry_count; TYPE_4__* p_entries; } ;
typedef TYPE_3__ MP4_Box_t ;


 int free (TYPE_4__*) ;

__attribute__((used)) static void MP4_FreeBox_keys( MP4_Box_t *p_box )
{
    for( uint32_t i=0; i<p_box->data.p_keys->i_entry_count; i++ )
        free( p_box->data.p_keys->p_entries[i].psz_value );
    free( p_box->data.p_keys->p_entries );
}
