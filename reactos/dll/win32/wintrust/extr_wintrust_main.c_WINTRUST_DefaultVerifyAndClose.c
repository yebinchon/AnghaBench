
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINTRUST_DATA ;
typedef int LONG ;
typedef int HWND ;
typedef int GUID ;


 int TRACE (char*,int ,...) ;
 int WINTRUST_DefaultClose (int ,int *,int *) ;
 int WINTRUST_DefaultVerify (int ,int *,int *) ;
 int debugstr_guid (int *) ;

__attribute__((used)) static LONG WINTRUST_DefaultVerifyAndClose(HWND hwnd, GUID *actionID,
 WINTRUST_DATA *data)
{
    LONG err;

    TRACE("(%p, %s, %p)\n", hwnd, debugstr_guid(actionID), data);

    err = WINTRUST_DefaultVerify(hwnd, actionID, data);
    WINTRUST_DefaultClose(hwnd, actionID, data);
    TRACE("returning %08x\n", err);
    return err;
}
