
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int parser_ctx_t ;
struct TYPE_3__ {int token; int word; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int check_keyword (int *,int ) ;
 TYPE_1__* keywords ;

__attribute__((used)) static int check_keywords(parser_ctx_t *ctx)
{
    int min = 0, max = ARRAY_SIZE(keywords)-1, r, i;

    while(min <= max) {
        i = (min+max)/2;

        r = check_keyword(ctx, keywords[i].word);
        if(!r)
            return keywords[i].token;

        if(r > 0)
            min = i+1;
        else
            max = i-1;
    }

    return 0;
}
