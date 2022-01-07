
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int eol_str; } ;
struct TYPE_4__ {int style; struct undo_item* str; } ;
struct TYPE_6__ {TYPE_2__ split_para; TYPE_1__ insert_run; } ;
struct undo_item {int type; TYPE_3__ u; } ;


 int ME_DestroyString (int ) ;
 int ME_ReleaseStyle (int ) ;
 int heap_free (struct undo_item*) ;



__attribute__((used)) static void destroy_undo_item( struct undo_item *undo )
{
    switch( undo->type )
    {
    case 129:
        heap_free( undo->u.insert_run.str );
        ME_ReleaseStyle( undo->u.insert_run.style );
        break;
    case 128:
        ME_DestroyString( undo->u.split_para.eol_str );
        break;
    default:
        break;
    }

    heap_free( undo );
}
