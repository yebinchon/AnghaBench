
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rangepoint_t ;
typedef int WCHAR ;
typedef scalar_t__ LONG ;


 int FALSE ;
 scalar_t__ find_prev_space (int *,int ) ;
 scalar_t__ isspaceW (int ) ;
 int move_next_char (int *) ;

__attribute__((used)) static LONG move_by_words(rangepoint_t *iter, LONG cnt)
{
    LONG ret = 0;

    if(cnt >= 0) {
        WCHAR c;

        while(ret < cnt && (c = move_next_char(iter))) {
            if(isspaceW(c))
                ret++;
        }
    }else {
        while(ret > cnt && find_prev_space(iter, FALSE))
            ret--;
    }

    return ret;
}
