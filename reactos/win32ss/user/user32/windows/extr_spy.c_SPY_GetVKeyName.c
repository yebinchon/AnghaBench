
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t WPARAM ;


 size_t SPY_MAX_VKKEYSNUM ;
 char** VK_KeyNames ;

const char *SPY_GetVKeyName(WPARAM wParam)
{
    const char *vk_key_name;

    if(wParam <= SPY_MAX_VKKEYSNUM && VK_KeyNames[wParam])
        vk_key_name = VK_KeyNames[wParam];
    else
        vk_key_name = "VK_???";

    return vk_key_name;
}
