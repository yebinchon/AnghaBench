
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tagMSIVIEW {int dummy; } ;
typedef int UINT ;
typedef int MSIRECORD ;
typedef int MSIMODIFY ;


 int ERROR_CALL_NOT_IMPLEMENTED ;
 int ERROR_INVALID_DATA ;
 int FALSE ;
 int FIXME (char*,struct tagMSIVIEW*,int,int *) ;
 int STORAGES_insert_row (struct tagMSIVIEW*,int *,int,int ) ;
 int TRACE (char*,struct tagMSIVIEW*,int,int *) ;
 int storages_modify_assign (struct tagMSIVIEW*,int *) ;
 int storages_modify_update (struct tagMSIVIEW*,int *) ;

__attribute__((used)) static UINT STORAGES_modify(struct tagMSIVIEW *view, MSIMODIFY eModifyMode, MSIRECORD *rec, UINT row)
{
    UINT r;

    TRACE("%p %d %p\n", view, eModifyMode, rec);

    switch (eModifyMode)
    {
    case 139:
        r = storages_modify_assign(view, rec);
        break;

    case 137:
        r = STORAGES_insert_row(view, rec, -1, FALSE);
        break;

    case 132:
        r = storages_modify_update(view, rec);
        break;

    case 128:
    case 136:
    case 134:
    case 133:
    case 135:
    case 138:
    case 131:
    case 129:
    case 130:
        FIXME("%p %d %p - mode not implemented\n", view, eModifyMode, rec );
        r = ERROR_CALL_NOT_IMPLEMENTED;
        break;

    default:
        r = ERROR_INVALID_DATA;
    }

    return r;
}
