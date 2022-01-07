
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SYSKIND ;






 int WARN (char*,int) ;

__attribute__((used)) static int get_ptr_size(SYSKIND syskind)
{
    switch(syskind){
    case 128:
        return 8;
    case 129:
    case 131:
    case 130:
        return 4;
    }
    WARN("Unhandled syskind: 0x%x\n", syskind);
    return 4;
}
