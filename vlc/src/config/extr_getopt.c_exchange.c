
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int first_nonopt; int last_nonopt; int ind; } ;
typedef TYPE_1__ vlc_getopt_t ;



__attribute__((used)) static void exchange(char **argv, vlc_getopt_t *restrict state)
{
    int bottom = state->first_nonopt;
    int middle = state->last_nonopt;
    int top = state->ind;
    char *tem;






    while (top > middle && middle > bottom)
    {
        if (top - middle > middle - bottom)
        {

            int len = middle - bottom;
            register int i;


            for (i = 0; i < len; i++)
            {
                tem = argv[bottom + i];
                argv[bottom + i] = argv[top - (middle - bottom) + i];
                argv[top - (middle - bottom) + i] = tem;
            }

            top -= len;
        }
        else
        {

            int len = top - middle;
            register int i;


            for (i = 0; i < len; i++)
            {
                tem = argv[bottom + i];
                argv[bottom + i] = argv[middle + i];
                argv[middle + i] = tem;
            }

            bottom += len;
        }
    }



    state->first_nonopt += (state->ind - state->last_nonopt);
    state->last_nonopt = state->ind;
}
