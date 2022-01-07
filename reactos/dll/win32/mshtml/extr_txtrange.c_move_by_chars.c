
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rangepoint_t ;
typedef scalar_t__ LONG ;


 scalar_t__ move_next_char (int *) ;
 scalar_t__ move_prev_char (int *) ;

__attribute__((used)) static LONG move_by_chars(rangepoint_t *iter, LONG cnt)
{
    LONG ret = 0;

    if(cnt >= 0) {
        while(ret < cnt && move_next_char(iter))
            ret++;
    }else {
        while(ret > cnt && move_prev_char(iter))
            ret--;
    }

    return ret;
}
