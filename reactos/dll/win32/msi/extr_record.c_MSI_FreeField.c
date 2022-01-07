
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int stream; int szwVal; } ;
struct TYPE_5__ {int type; TYPE_1__ u; } ;
typedef TYPE_2__ MSIFIELD ;


 int ERR (char*,int) ;
 int IStream_Release (int ) ;





 int msi_free (int ) ;

__attribute__((used)) static void MSI_FreeField( MSIFIELD *field )
{
    switch( field->type )
    {
    case 130:
    case 132:
    case 131:
        break;
    case 128:
        msi_free( field->u.szwVal);
        break;
    case 129:
        IStream_Release( field->u.stream );
        break;
    default:
        ERR("Invalid field type %d\n", field->type);
    }
}
