
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ole_priv_data ;
typedef scalar_t__ DWORD_PTR ;
typedef int DVTARGETDEVICE ;



__attribute__((used)) static inline DVTARGETDEVICE *td_offs_to_ptr(ole_priv_data *data, DWORD_PTR off)
{
    if(off == 0) return ((void*)0);
    return (DVTARGETDEVICE*)((char*)data + off);
}
