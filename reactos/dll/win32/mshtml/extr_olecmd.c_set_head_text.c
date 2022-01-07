
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nsresult ;
typedef int nsIPrintSettings ;
typedef int LPCWSTR ;
typedef scalar_t__ BOOL ;


 int NS_OK ;
 int nsIPrintSettings_SetFooterStrCenter (int *,int ) ;
 int nsIPrintSettings_SetFooterStrLeft (int *,int ) ;
 int nsIPrintSettings_SetFooterStrRight (int *,int ) ;
 int nsIPrintSettings_SetHeaderStrCenter (int *,int ) ;
 int nsIPrintSettings_SetHeaderStrLeft (int *,int ) ;
 int nsIPrintSettings_SetHeaderStrRight (int *,int ) ;

__attribute__((used)) static nsresult set_head_text(nsIPrintSettings *settings, LPCWSTR template, BOOL head, int pos)
{
    if(head) {
        switch(pos) {
        case 0:
            return nsIPrintSettings_SetHeaderStrLeft(settings, template);
        case 1:
            return nsIPrintSettings_SetHeaderStrRight(settings, template);
        case 2:
            return nsIPrintSettings_SetHeaderStrCenter(settings, template);
        }
    }else {
        switch(pos) {
        case 0:
            return nsIPrintSettings_SetFooterStrLeft(settings, template);
        case 1:
            return nsIPrintSettings_SetFooterStrRight(settings, template);
        case 2:
            return nsIPrintSettings_SetFooterStrCenter(settings, template);
        }
    }

    return NS_OK;
}
