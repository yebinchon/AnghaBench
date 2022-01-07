
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int INT ;


 int FALSE ;
 int OBJID_HSCROLL ;
 int OBJID_VSCROLL ;


 int assert (int ) ;

__attribute__((used)) static LONG SCROLL_getObjectId(INT nBar)
{
    switch(nBar)
    {
    case 129:
        return OBJID_HSCROLL;
    case 128:
        return OBJID_VSCROLL;
    default:
        assert(FALSE);
        return 0;
    }
}
