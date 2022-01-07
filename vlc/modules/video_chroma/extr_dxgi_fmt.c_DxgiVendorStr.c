
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *DxgiVendorStr(unsigned int gpu_vendor)
{
    static const struct {
        unsigned id;
        const char name[32];
    } vendors [] = {
        { 133, "ATI" },
        { 131, "NVIDIA" },
        { 128, "VIA" },
        { 132, "Intel" },
        { 129, "S3 Graphics" },
        { 130, "Qualcomm" },
        { 0, "Unknown" }
    };

    int i = 0;
    for (i = 0; vendors[i].id != 0; i++) {
        if (vendors[i].id == gpu_vendor)
            break;
    }
    return vendors[i].name;
}
