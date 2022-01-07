
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;


 int FIXME (char*,int) ;

 int V_I4 (int *) ;
 int V_VT (int *) ;

int convert_child_id(VARIANT *v)
{
    switch(V_VT(v)) {
    case 128:
        return V_I4(v);
    default:
        FIXME("unhandled child ID variant type: %d\n", V_VT(v));
        return -1;
    }
}
