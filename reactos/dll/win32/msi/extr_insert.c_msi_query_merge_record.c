
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {struct TYPE_15__* next; TYPE_2__* val; } ;
typedef TYPE_3__ column_info ;
typedef int UINT ;
struct TYPE_16__ {int hdr; } ;
struct TYPE_13__ {int ival; int sval; } ;
struct TYPE_14__ {int type; TYPE_1__ u; } ;
typedef TYPE_4__ MSIRECORD ;
typedef int DWORD ;


 int ERR (char*,int) ;



 TYPE_4__* MSI_CreateRecord (int) ;
 int MSI_RecordCopyField (TYPE_4__*,int,TYPE_4__*,int) ;
 int MSI_RecordSetInteger (TYPE_4__*,int,int ) ;
 int MSI_RecordSetStringW (TYPE_4__*,int,int ) ;
 int TRACE (char*,...) ;
 int debugstr_w (int ) ;
 int msiobj_release (int *) ;

MSIRECORD *msi_query_merge_record( UINT fields, const column_info *vl, MSIRECORD *rec )
{
    MSIRECORD *merged;
    DWORD wildcard_count = 1, i;

    merged = MSI_CreateRecord( fields );
    for( i=1; i <= fields; i++ )
    {
        if( !vl )
        {
            TRACE("Not enough elements in the list to insert\n");
            goto err;
        }
        switch( vl->val->type )
        {
        case 129:
            TRACE("field %d -> %s\n", i, debugstr_w(vl->val->u.sval));
            MSI_RecordSetStringW( merged, i, vl->val->u.sval );
            break;
        case 130:
            MSI_RecordSetInteger( merged, i, vl->val->u.ival );
            break;
        case 128:
            if( !rec )
                goto err;
            MSI_RecordCopyField( rec, wildcard_count, merged, i );
            wildcard_count++;
            break;
        default:
            ERR("Unknown expression type %d\n", vl->val->type);
        }
        vl = vl->next;
    }

    return merged;
err:
    msiobj_release( &merged->hdr );
    return ((void*)0);
}
