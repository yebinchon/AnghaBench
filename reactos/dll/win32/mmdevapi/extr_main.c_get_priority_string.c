
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *get_priority_string(int prio)
{
    switch(prio){
    case 128:
        return "Unavailable";
    case 131:
        return "Low";
    case 130:
        return "Neutral";
    case 129:
        return "Preferred";
    }
    return "Invalid";
}
