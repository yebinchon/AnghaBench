
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
__attribute__((used)) static const char *
GetNameFromID(INT ID)
{
    switch (ID)
    {
        case 133: return "rad1";
        case 132: return "rad2";
        case 131: return "rad3";
        case 134: return "psh1";
        case 130: return "rad5";
        case 129: return "rad6";
        case 128: return "rad7";
        case 135: return "OK button";
        case 136: return "Cancel button";
        default: return "(unknown)";
    }
}
