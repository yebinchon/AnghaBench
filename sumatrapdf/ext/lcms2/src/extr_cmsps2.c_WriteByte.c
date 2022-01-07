
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt8Number ;
typedef int cmsIOHANDLER ;
typedef int cmsContext ;


 scalar_t__ MAXPSCOLS ;
 int _cmsIOPrintf (int ,int *,char*,...) ;
 scalar_t__ _cmsPSActualColumn ;

__attribute__((used)) static
void WriteByte(cmsContext ContextID, cmsIOHANDLER* m, cmsUInt8Number b)
{
    _cmsIOPrintf(ContextID, m, "%02x", b);
    _cmsPSActualColumn += 2;

    if (_cmsPSActualColumn > MAXPSCOLS) {

        _cmsIOPrintf(ContextID, m, "\n");
        _cmsPSActualColumn = 0;
    }
}
