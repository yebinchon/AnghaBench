
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chroma; int video_size; int video_ptr; } ;
typedef TYPE_1__ vout_display_sys_t ;
typedef int uint32_t ;



 int memset (int ,int ,int) ;

__attribute__((used)) static void ClearScreen(vout_display_sys_t *sys)
{
    switch (sys->chroma) {

    case 128: {
        unsigned int j, size = sys->video_size / 4;
        uint32_t *ptr = (uint32_t*)((uintptr_t)(sys->video_ptr + 3) & ~3);
        for(j=0; j < size; j++)
            ptr[j] = 0x10801080;
        break;
    }
    default:
        memset(sys->video_ptr, 0, sys->video_size);
    }
}
