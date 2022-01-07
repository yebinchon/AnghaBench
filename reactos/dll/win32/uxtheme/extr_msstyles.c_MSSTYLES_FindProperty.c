
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PTHEME_PROPERTY ;
typedef int PTHEME_PARTSTATE ;
typedef scalar_t__ PTHEME_CLASS ;


 int MSSTYLES_FindPartState (scalar_t__,int,int,scalar_t__*) ;
 int * MSSTYLES_PSFindProperty (int ,int,int) ;
 int TRACE (char*,scalar_t__,int,int,int) ;

PTHEME_PROPERTY MSSTYLES_FindProperty(PTHEME_CLASS tc, int iPartId, int iStateId, int iPropertyPrimitive, int iPropertyId)
{
    PTHEME_CLASS next = tc;
    PTHEME_PARTSTATE ps;
    PTHEME_PROPERTY tp;

    TRACE("(%p, %d, %d, %d)\n", tc, iPartId, iStateId, iPropertyId);

    while(next && (ps = MSSTYLES_FindPartState(next, iPartId, iStateId, &next))) {
        if((tp = MSSTYLES_PSFindProperty(ps, iPropertyPrimitive, iPropertyId))) {
            return tp;
        }
    }

    if(iStateId != 0)
        iStateId = 0;

    else if(iPartId != 0)
        iPartId = 0;
    else
        return ((void*)0);

    if((tp = MSSTYLES_FindProperty(tc, iPartId, iStateId, iPropertyPrimitive, iPropertyId)))
        return tp;
    return ((void*)0);
}
