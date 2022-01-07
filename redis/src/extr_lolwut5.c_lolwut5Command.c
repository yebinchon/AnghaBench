
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int sds ;
typedef int lwCanvas ;
struct TYPE_5__ {int argc; int * argv; } ;
typedef TYPE_1__ client ;


 scalar_t__ C_OK ;
 char* REDIS_VERSION ;
 int addReplyVerbatim (TYPE_1__*,int ,int ,char*) ;
 scalar_t__ getLongFromObjectOrReply (TYPE_1__*,int ,long*,int *) ;
 int * lwDrawSchotter (long,long,long) ;
 int lwFreeCanvas (int *) ;
 int renderCanvas (int *) ;
 int sdscat (int ,char*) ;
 int sdscatlen (int ,char*,int) ;
 int sdsfree (int ) ;
 int sdslen (int ) ;

void lolwut5Command(client *c) {
    long cols = 66;
    long squares_per_row = 8;
    long squares_per_col = 12;


    if (c->argc > 1 &&
        getLongFromObjectOrReply(c,c->argv[1],&cols,((void*)0)) != C_OK)
        return;

    if (c->argc > 2 &&
        getLongFromObjectOrReply(c,c->argv[2],&squares_per_row,((void*)0)) != C_OK)
        return;

    if (c->argc > 3 &&
        getLongFromObjectOrReply(c,c->argv[3],&squares_per_col,((void*)0)) != C_OK)
        return;



    if (cols < 1) cols = 1;
    if (cols > 1000) cols = 1000;
    if (squares_per_row < 1) squares_per_row = 1;
    if (squares_per_row > 200) squares_per_row = 200;
    if (squares_per_col < 1) squares_per_col = 1;
    if (squares_per_col > 200) squares_per_col = 200;


    lwCanvas *canvas = lwDrawSchotter(cols,squares_per_row,squares_per_col);
    sds rendered = renderCanvas(canvas);
    rendered = sdscat(rendered,
        "\nGeorg Nees - schotter, plotter on paper, 1968. Redis ver. ");
    rendered = sdscat(rendered,REDIS_VERSION);
    rendered = sdscatlen(rendered,"\n",1);
    addReplyVerbatim(c,rendered,sdslen(rendered),"txt");
    sdsfree(rendered);
    lwFreeCanvas(canvas);
}
