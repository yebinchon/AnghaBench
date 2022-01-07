
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int * accessible_create ;
struct TYPE_7__ {int idx; int * create_window; int * create_client; int name; } ;
typedef TYPE_1__ WCHAR ;
typedef scalar_t__ LONG ;
typedef int HWND ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int FIXME (char*,int) ;
 scalar_t__ OBJID_CLIENT ;
 int OBJID_QUERYCLASSNAMEIDX ;
 int RealGetWindowClassW (int ,TYPE_1__*,int) ;
 int SendMessageW (int ,int ,int ,int ) ;
 int TRACE (char*,int) ;
 int WARN (char*,int) ;
 int WM_GETOBJECT ;
 TYPE_1__* builtin_classes ;
 int debugstr_w (TYPE_1__*) ;
 int strcmpiW (TYPE_1__*,int ) ;

__attribute__((used)) static accessible_create get_builtin_accessible_obj(HWND hwnd, LONG objid)
{
    WCHAR class_name[64];
    int i, idx;

    if(!RealGetWindowClassW(hwnd, class_name, ARRAY_SIZE(class_name)))
        return ((void*)0);
    TRACE("got window class: %s\n", debugstr_w(class_name));

    for(i=0; i<ARRAY_SIZE(builtin_classes); i++) {
        if(!strcmpiW(class_name, builtin_classes[i].name)) {
            accessible_create ret;

            ret = (objid==OBJID_CLIENT ?
                    builtin_classes[i].create_client :
                    builtin_classes[i].create_window);
            if(!ret)
                FIXME("unhandled window class: %s\n", debugstr_w(class_name));
            return ret;
        }
    }

    idx = SendMessageW(hwnd, WM_GETOBJECT, 0, OBJID_QUERYCLASSNAMEIDX);
    if(idx) {
        for(i=0; i<ARRAY_SIZE(builtin_classes); i++) {
            if(idx == builtin_classes[i].idx) {
                accessible_create ret;

                ret = (objid==OBJID_CLIENT ?
                        builtin_classes[i].create_client :
                        builtin_classes[i].create_window);
                if(!ret)
                    FIXME("unhandled class name idx: %x\n", idx);
                return ret;
            }
        }

        WARN("unhandled class name idx: %x\n", idx);
    }

    return ((void*)0);
}
